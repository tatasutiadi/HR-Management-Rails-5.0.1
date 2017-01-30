class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
  	render html:"hello woii hello"
  end

  def beforeAction
    if(!session[:username])
    	redirect_to "/login"
    end
  end

  def set_locale
    # I18n.locale = params[:locale] || I18n.default_locale
    I18n.locale = "#{set_lang}".downcase
  end

  def set_lang
    @lang = User.find(session[:user_id]).language
  end

end
