class Player < ActiveRecord::Base
  has_many :participation
  has_many :events, through: :participation
  
  has_many :teams
  has_many :users, through: :teams


  
  validates :email, :name, presence: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }
  validates :email, uniqueness: true


  def find_by_email(email)
    Player.where('email = ?', email)
  end

end
