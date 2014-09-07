require 'test_helper'

class EventMailerTest < ActionMailer::TestCase
  test "after_create_event" do
    event = FactoryGirl.create(:event)
    player = FactoryGirl.create(:player)

    event.players << player

    mail = EventMailer.after_create_event(event)
    assert_equal "After create event", mail.subject
    assert_equal ["#{player.email}"], mail.to
    assert_equal ["action.joe.doe@example.com"], mail.from
    #assert_match "Hi", mail.body.encoded
  end

end
