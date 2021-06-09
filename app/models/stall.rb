class Stall < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_by_name_and_description,
                  against: [ :name, :description ],
                  using: {
                    tsearch: { prefix: true }
                  }

  serialize :services
  has_many :reviews
  belongs_to :user
  validates :name, presence: true
  validates :category, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :rating, presence: true, inclusion: { in: 1..5 }
  has_many_attached :photos
end
