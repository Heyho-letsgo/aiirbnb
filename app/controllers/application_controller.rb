class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # Section 4, session 17 - https://www.udemy.com/apprendre-a-coder-une-plateforme-airbnb/learn/v4/t/lecture/6767878?start=0
  
  
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  
protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:fullname])
    devise_parameter_sanitizer.permit(:account_update, keys: [:fullname, :avatar, :phone_number, :description, :email, :password, :password_confirmation])
  end
end


