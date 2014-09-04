class Event < ActiveRecord::Base
  belongs_to :user
  belongs_to :field
  
  has_many :participations
  has_many :players, through: :participations


end
