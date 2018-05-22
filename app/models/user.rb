class User < ApplicationRecord
  has_many :hideouts, dependent: :destroy
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
end
