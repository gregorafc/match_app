class Player < ActiveRecord::Base
  belongs_to :participation
  has_many :events, through: :participation
end
