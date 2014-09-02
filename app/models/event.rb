class Event < ActiveRecord::Base
  belongs_to :user
  belongs_to :field
  belongs_to :participation
end
