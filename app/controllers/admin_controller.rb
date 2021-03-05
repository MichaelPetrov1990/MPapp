class AdminController < ApplicationController
  def questions

  end

  def users
    @users = User.all
  end
end
