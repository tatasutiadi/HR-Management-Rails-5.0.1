class Bank < ApplicationRecord
  self.table_name = "master_bank"
  self.primary_key = "bank_id"

  # validates_presence_of :bank_name
  validates_presence_of :bank_name
  # safe_attributes 'bank_name'

end
