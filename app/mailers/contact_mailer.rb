class ContactMailer < ActionMailer::Base
  default to: 'alexandria.c.nelson@gmail.com'

  def contact_email(name, email, body)
    @name = name
    @email = email
    @body = body

    mail(from: email, subject: 'Message from Share.com contact form')
  end
end