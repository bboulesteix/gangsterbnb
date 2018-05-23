class User < ApplicationRecord
  has_many :hideouts, dependent: :destroy
  has_many :bookings
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
end
