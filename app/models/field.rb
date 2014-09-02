class Field < ActiveRecord::Base
  belongs_to :sportcenter
  has_many :events

  validates :name, presence: :true


end
