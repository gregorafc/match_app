class EventMailer < ActionMailer::Base
  default from: "action.joe.doe@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.event_mailer.after_create_event.subject
  #
  def after_create_event(event)
    @event = event

  
      mail to: event.players.map { |p| p.email}

  end 
end
