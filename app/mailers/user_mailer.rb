class UserMailer < ApplicationMailer
  default from: 'petrov.powerof@gmail.com'

  def welcome
    @user = params[:user]
    # @url = https://the-power-of.herokuapp.com/users/sign_in 
    mail(to: @user.email, subject: 'Welcome to The Power Of!')
  end
end
