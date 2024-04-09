# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview


      def welcome_email

        @user = User.new(name: "thazin", email: "thazinnaing511@gmail.com", login: "thazinnaing")
        
        UserMailer.with(user: @user).welcome_email
    end

end
