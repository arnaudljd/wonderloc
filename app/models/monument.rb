class Monument < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings, dependent: :destroy
  has_many_attached :photos

  validates :name, presence: true, uniqueness: true, length: { minimum: 3 }
  # validates :photos, presence: true
  validates :price, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :address, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_name_description_and_address,
    against: [ :name, :address, :description],
    using: {
      tsearch: { prefix: true }
    }
end
