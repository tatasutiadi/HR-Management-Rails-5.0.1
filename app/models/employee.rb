class Employee < ApplicationRecord
  belongs_to :departement
  belongs_to :position
  belongs_to :user

  # validates_presence_of :NIP
  validates :NIP, :presence => true

  # Accessors
  attr_accessor :username,:password

  # has_attached_file method active , must install paperclip "gem "paperclip", "~> 5.0.0.beta1""
  # https://github.com/thoughtbot/paperclip
  has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  #end

  # Validations
  # validates :body, :presence => true
  # validates :user, :presence => true

end
