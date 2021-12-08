class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian", "oriental"]
  validates :category, inclusion: CATEGORIES
end
