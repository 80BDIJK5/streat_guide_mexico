class Stall < ApplicationRecord
  has_many :reviews
  belongs_to :user
  validates :name, presence: true
  validates :category, presence: true
  validates :description, presence: true
  validates :rating, presence: true, inclusion: { in: 1..5 }
  has_many_attached :photos
end
