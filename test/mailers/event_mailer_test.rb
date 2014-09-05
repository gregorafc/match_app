require 'test_helper'

class EventMailerTest < ActionMailer::TestCase
  test "after_create_event" do
    mail = EventMailer.after_create_event
    assert_equal "After create event", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
