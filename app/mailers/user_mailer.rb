class UserMailer < ApplicationMailer
    default from: 'thazinnaing511@gmail.com'

    def welcome_email
        @user = params[:user]
        @url = 'http://example.com/login'
        mail(to: @user.email, subject: "Welcome to my awesome site")
    end

end