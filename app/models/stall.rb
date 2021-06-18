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
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :name, presence: true
  validates :category, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :rating, presence: true, inclusion: { in: 1..5 }
  has_many_attached :photos

  def calculate_rating
    total = 0
    self.reviews.each do |review|
      total = total + review.rating
    end
    self.rating = total / self.reviews.count
    self.save!
  end

  def photos_aggregation
    photos_array = []
    self.reviews.each do |review|
      review.photos.each do |photo|
        photos_array << photo
      end
    end
    self.photos.each do |photo|
      photos_array << photo
    end
    return photos_array
  end
end
