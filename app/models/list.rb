class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  has_many :reviews, dependent: :destroy
  validates :name, uniqueness: true
  validates :name, presence: true
  has_one_attached :photo
end
