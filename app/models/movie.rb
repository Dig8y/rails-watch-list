class Movie < ApplicationRecord
  has_many :bookmarks
  has_one :bookmark
  validates :title, :overview, uniqueness: true
  validates :title, :overview, presence: true

end
