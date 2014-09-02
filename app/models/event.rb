class Event < ActiveRecord::Base
  belongs_to :user
  belongs_to :field
  has_many :participation
  has_many :players, through: :participation
end
