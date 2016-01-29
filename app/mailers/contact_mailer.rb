class ContactMailer < ActionMailer::Base
    default to: 'cvolion@me.com'
    
    def contact_email(name, email, body)
        @name = name
        @email = email
        @body = body
      
        mail(from: email, subject: 'An owl has arrived from WizardMatch.com')
    end
end