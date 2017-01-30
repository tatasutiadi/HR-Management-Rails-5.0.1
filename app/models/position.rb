class Position < ApplicationRecord
  has_many :employees
  self.table_name = "master_position"
  self.primary_key = "position_id"
  # attr_accessor :code

end
