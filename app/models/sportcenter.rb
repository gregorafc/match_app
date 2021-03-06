class Sportcenter < ActiveRecord::Base
  has_many :fields, dependent: :destroy

  validates :name, :adress, :phone, presence: :true
  validates :phone, format: { with: /\A[0-9]+\z/ }

end
