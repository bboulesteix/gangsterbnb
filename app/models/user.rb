class User < ApplicationRecord
  has_many :hideouts, dependent: :destroy
  # validates :name, presence: true
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
end
