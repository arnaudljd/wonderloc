class Booking < ApplicationRecord
  belongs_to :monument
  belongs_to :user
end
