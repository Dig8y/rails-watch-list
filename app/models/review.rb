class Review < ApplicationRecord
  belongs_to :list
  validates :rating, numericality: { only_integer: true }
  validates :rating, numericality: { in: 0..5 }
end
