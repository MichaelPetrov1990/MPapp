class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def check_if_user_is_admin
    redirect_to root_path, flash: {:alert => "Sorry you dont have permission  to view that page"} unless current_user && current_user.is_admin?   
  end
end
