class Review < ApplicationRecord
  belongs_to :list
  validates :rating, :comment, presence: true
  validates :comment, length: { minimum: 6}
  validates :rating, numericality: { only_integer: true }
  validates :rating, numericality: { in: 0..5 }
end
