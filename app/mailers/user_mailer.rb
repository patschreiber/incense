class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def welcome_email(user)
    @user = user
    @url = ENV["INCENSE_DOMAIN"]
    mail( to: @user.email, subject: 'Welcome to Incense!'  )
  end
end
