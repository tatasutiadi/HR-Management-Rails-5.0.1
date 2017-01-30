class User < ApplicationRecord
	#set table
	self.table_name = "users"
	self.primary_key = "user_id" # primary key of the table
	#set relation manual
	has_many :employees, :class_name =>Employee, :foreign_key=>'user_id'

	# attr_accessor :password
	# validates_confirmation_of :password
	before_save :encrypt_password

	def encrypt_password
		pass = self.password
		self.password = BCrypt::Engine.generate_salt
		self.salt_password = BCrypt::Engine.hash_secret(pass, password)
		# self.password_salt = BCrypt::Engine.generate_salt
		# self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
	end

	def self.authenticate(username, password)
		user = User.where(username: username).first
		if user && user.salt_password == BCrypt::Engine.hash_secret(password, user.password)
			user
		else
			nil
		end
	end

end
