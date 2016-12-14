class UserMailer < ApplicationMailer
  default :from => "farmsavour@gmail.com"

  def welcome_email(user)
    @user = user
    @url  = "http://localhost:8000/#/login"
    mail(:to => user.email,
      :subject => "Welcome to My Awesome Site")
  end

end
