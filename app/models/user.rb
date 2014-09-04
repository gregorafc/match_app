class User < ActiveRecord::Base
  has_many :events
 
  has_many :teams
  has_many :players, through: :teams

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


end
