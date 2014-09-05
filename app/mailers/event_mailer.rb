class EventMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.event_mailer.after_create_event.subject
  #
  def after_create_event
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
