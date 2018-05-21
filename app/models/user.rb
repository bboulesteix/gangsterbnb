class User < ApplicationRecord
  has_many :hideouts
  validates :name, presence: true
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
end
