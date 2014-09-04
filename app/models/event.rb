class Event < ActiveRecord::Base
  belongs_to :user
  belongs_to :field
  
  has_many :participations
  has_many :players, through: :participations

  validates :game_name, :field_id, :user_id, :date_take_place, presence: true

end
