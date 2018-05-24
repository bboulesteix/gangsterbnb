class User < ApplicationRecord
  has_many :hideouts, dependent: :destroy
  has_many :bookings
  has_many :reviews
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
end
