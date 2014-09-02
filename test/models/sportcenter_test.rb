require 'test_helper'

class SportcenterTest < ActiveSupport::TestCase

  setup do
    @sportcenter = FactoryGirl.build(:sportcenter)
  end

  test "sportcenter should save" do
    assert_equal true, @sportcenter.save, "Sportcenter didnt save"
  end

  test "sportcenter should have name" do
    @sportcenter.name = nil
    assert_equal false, @sportcenter.save, "Sportcenter save without name"
  end

  test "sportcenter should have adress" do
    @sportcenter.adress = nil
    assert_equal false, @sportcenter.save, "Sportcenter save without adress"
  end

  test "sportcenter should have phone" do
    @sportcenter.phone = nil
    assert_equal false, @sportcenter.save, "Sportcenter save without adress"
  end

  test "phone number should be only numerically" do
    @sportcenter.phone = "12345678h"
    assert_equal false, @sportcenter.save, "Phone number save with wrong format"
  end

  test "sportcenter should can add field" do
    field = FactoryGirl.create(:field)
    @sportcenter.save
    @sportcenter.fields << field
    assert_equal 1 , @sportcenter.fields.count
  end

  test "sportcenter should delete" do
    @sportcenter.save
    assert_difference("Sportcenter.count", -1) do
      @sportcenter.delete
    end
  end

  test "sportcenter should dependant destroy field" do
    field = FactoryGirl.create(:field)
    @sportcenter.save
    @sportcenter.fields << field
    assert_difference("Field.count", -1) do
      @sportcenter.destroy
    end

  end

end
