class Player < ActiveRecord::Base
  belongs_to :participation
  has_many :events, through: :participation
  belongs_to :team
  has_many :users, through: :team
end
