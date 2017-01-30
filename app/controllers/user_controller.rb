class UserController < ApplicationController

	before_action :beforeAction, only: [:index]

	def index
		@users = User.all
	end

	def new
		@login = true
	end

	def login
		#try to authenticate the user - if they authenticate successfully, an instance of the User model is returned
		@user = User.authenticate(params[:username], params[:password])
		#if an instance is returned and @user is not nil...
		if @user
			#let the user know they've been logged in with a flash message
			flash[:notice] = "You've been logged in."
			#THIS IS THE MOST IMPORTANT PART. Actually log the user in by storing their ID in the session hash with the [:user_id] key!
			session[:user_id] = @user.user_id
			session[:username] = @user.username
			#then redirect them to the homepage
			redirect_to "/dashboard"
		else
			#whoops, either the user wasn't in the database or their password is incorrect, so let them know, then redirect them back to the log in page
			flash[:alert] = "There was a problem logging you in. username or password are incorrect."
			redirect_to login_path
		end
	end

	def logout

		# reset_session
		# session.delete(:user_id)
		# session.delete(:username)
		#
		# User.find(session[:user_id]).destroy
		session[:user_id] = nil
		session[:username] = nil

		flash[:notice] = "You've been logged out successfully."
		redirect_to "/login"
	end

	def setlanguage
		@lang = params[:lang]
		@user = User.find(session[:user_id])
		@user.update(language: "#{@lang}")
		# User.update_
		respond_to do |format|
			format.html
			format.json {render json: true}
			# format.json {render json: @user}
		end

	end

end
