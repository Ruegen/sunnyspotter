class ContactMailer < ApplicationMailer

    def send_contact_email(params)
        @email = params[:email]
        @name = params[:name]
        @message = params[:message]
        
        mail(
            to: ENV['MAILER_EMAIL'], 
            subject: 'Hiii Ruegen :D'
            )

    end


end
