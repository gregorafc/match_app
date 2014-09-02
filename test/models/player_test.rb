require 'test_helper'

class PlayerTest < ActiveSupport::TestCase

  setup do
    @player = FactoryGirl.build(:player)
  end

  test 'player should save' do
    assert_equal true, @player.save
  end

  test 'player should have name' do
    @player.name = nil
    assert_equal false, @player.save
  end

  test 'player should have email' do
    @player.email = nil
    assert_equal false, @player.save
  end

  test 'email should be uniqe' do
    player_1 = FactoryGirl.create(:player, email: "jon@doe.com")
    dub = FactoryGirl.build(:player, email: "jon@doe.com")
    assert_equal false, dub.save
  end

  test 'email should be email' do
    @player.email = "asdsd.asas.com"
    assert_equal false, @player.save
  end

  test "player can be delete" do
    @player.save
    assert_difference("Player.count", -1) do
      @player.delete
    end
  end

  test 'player can have event through participation' do
    @player.save
    event = FactoryGirl.create(:event)
    assert_difference("@player.events.count", +1) do
      @player.events << event
    end
  end


end
