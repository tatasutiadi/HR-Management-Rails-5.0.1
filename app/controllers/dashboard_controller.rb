class DashboardController < ApplicationController

	before_action :beforeAction,:set_locale, only: [:index]

	#action index
	def index
		@countUsers = User.count
		@countEmp = Employee.count
		@countMale = Employee.where(:gender => 'L').count
		@countFemale = Employee.where(:gender => 'P').count
		# render :index
	end
end
