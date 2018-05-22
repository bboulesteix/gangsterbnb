class Hideout < ApplicationRecord
  belongs_to :user
  validates :safety, inclusion: { in: [1, 2, 3, 4, 5] }, numericality: { only_integer: true }
  validates :price, numericality: { greater_than: 0 }
  validates :name, presence: true
  validates :address, presence: true
  validates :capacity, numericality: { greater_than: 0 }
  mount_uploader :photo, PhotoUploader
end
