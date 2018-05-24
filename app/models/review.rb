class Review < ApplicationRecord
  belongs_to :hideout
  validates :rating, inclusion: { in: [1, 2, 3, 4, 5] }
  validates :rating, presence: true
end
