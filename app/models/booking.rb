class Booking < ApplicationRecord
  belongs_to :monument
  belongs_to :user
  has_many :reviews

  validates :start_date, :end_date, presence: true
end
