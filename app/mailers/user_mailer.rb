class UserMailer < ApplicationMailer
    default from: 'thazinnaing511@gmail.com'

    def welcome_email
        @user = params[:user]
        @url = 'http://example.com/login'
        attachments["heart.avif"] = File.read("app/assets/images/heart.avif")
        
        mail(
            from: email_address_with_name("thazinnaing511@gmail.com","sender"),
            to: email_address_with_name(@user.email, @user.name), 
            subject: "Welcome to my awesome site"
            )
    end
end