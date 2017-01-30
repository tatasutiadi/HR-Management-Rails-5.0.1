class Departement < ApplicationRecord
  self.primary_key = "departement_id"
  has_many :employees

end
