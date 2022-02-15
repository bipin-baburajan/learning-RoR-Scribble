class RegistrationMailer < ApplicationMailer
  default from: 'bipinbaburajan@gmail.com'
  CONTACT_EMAIL = ''

  def submission(message)
    @message = message
    mail(to: CONTACT_EMAIL, subject: 'New User Creation')
  end
end
