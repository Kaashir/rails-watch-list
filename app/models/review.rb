class Review < ApplicationRecord
  belongs_to :list
  validates :comment, presence: true, length: { minimum: 6 }
  validates :rating, inclusion: { in: (1..5) }
  validates :rating, numericality: { only_integer: true }
end
