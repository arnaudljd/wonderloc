class Monument < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings, dependent: :destroy

  validates :name, presence: true, uniqueness: true, length: { minimum: 6 }
  validates :picture, presence: true
  validates :price, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :address, presence: true
end
