# Preview all emails at http://localhost:3000/rails/mailers/event_mailer
class EventMailerPreview < ActionMailer::Preview


  # Preview this email at http://localhost:3000/rails/mailers/event_mailer/after_create_event

  
  def after_create_event()
    event = FactoryGirl.create(:event)
    player = FactoryGirl.create(:player)
    event.players << player
    EventMailer.after_create_event
  end

end
