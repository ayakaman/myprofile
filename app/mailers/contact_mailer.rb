class ContactMailer < ApplicationMailer

  default from: 'noreply@example.com'
  default to: 'admin@example.com'
  layout 'mailer'

  def send_mail(contact)
    @contact = contact
    mail(from: contact.email, subject: 'Webサイトより問い合わせが届きました')
  end

end
