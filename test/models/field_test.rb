require 'test_helper'

class FieldTest < ActiveSupport::TestCase
  
  setup do
    @field = FactoryGirl.build(:field)
  end

  test "field should save" do
    assert_equal true, @field.save, "Field didnt save"
  end

  test "field should have name" do
    @field.name = nil
    assert_equal false, @field.save, "Field save without name"
  end

  test "field can be destroy" do
    @field.save
    assert_difference("Field.count", -1) do
      @field.delete
    end
  end

  test "can add event to field" do
    @field
    event = events(:one)
    @field.events << event
    assert_equal event.field_id, @field.id
  end

end
