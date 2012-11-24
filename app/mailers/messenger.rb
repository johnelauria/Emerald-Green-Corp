class Messenger < ActionMailer::Base
  default from: "infoegc@emeraldgreencorp.com"

  def mailer(emailu)
    @emailu = emailu

    mail(to: @emailu.email, subject: "a message from #{@emailu.email}")
  end
end
