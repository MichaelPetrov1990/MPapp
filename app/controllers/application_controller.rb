class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, :if => :devise_controller?
  
  def check_if_user_is_admin
    redirect_to root_path, flash: {:alert => "Sorry you dont have permission  to view that page"} unless current_user && current_user.is_admin?   
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
  end
end
