class Custom < ApplicationRecord

  #generate code departement
  def self.generate_departementCode
    if Departement.count == 0
      code = "D001"
    else
      last_incident_number = Departement.last.departement_code
      number = last_incident_number.split('D')[1].to_i
      number += 1
      code = 'D' + "%03d" % number
    end
  end

  #generate code position
  def self.generate_positionCode
    # incident_year = Time.now.year.to_s[2..-1]
    if Position.count == 0
      # self.incident_number = "#{incident_year}-00001"
      code = "P001"
    else
      last_incident_number = Position.last.position_code
      # puts last_incident_number.inspect
      number = last_incident_number.split('P')[1].to_i
      number += 1
      puts number.inspect
      # code = incident_year + '-' + "%05d" % number
      code = 'P' + "%03d" % number
    end
  end

end
