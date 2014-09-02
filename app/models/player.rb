class Player < ActiveRecord::Base
  has_many :participation
  has_many :events, through: :participation
  belongs_to :team
  has_many :users, through: :team


  validates :name, :email, presence: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create }
  validates :email, uniqueness: true

end
