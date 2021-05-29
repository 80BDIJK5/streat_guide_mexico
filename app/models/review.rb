class Review < ApplicationRecord
  belongs_to :stall
  belongs_to :user
  validates :title, presence: true
  validates :comment, presence: true
  validates :rating, presence: true, inclusion: { in: 1..5 }
  has_many_attached :photos
end
