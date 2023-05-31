class User < ApplicationRecord
  has_many :bookings
  has_many :monuments, dependent: :destroy
  has_many :reviews, dependent: :destroy


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, presence: true
  validates :username, presence: true, uniqueness: true

  has_one_attached :photo
  before_save :attach_photo

  def attach_photo
    return if photo.attached?
    self.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/default_avatar.jpg')), filename: 'avatar')
  end

end
