class Player < ActiveRecord::Base
  has_many :participation
  has_many :events, through: :participation
  belongs_to :team
  has_many :users, through: :team
end
