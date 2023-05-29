class Review < ApplicationRecord
  belongs_to :user
  belongs_to :booking

  validates :content, presence: true, length: { minimum: 15 }
  validates :rating, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
end
