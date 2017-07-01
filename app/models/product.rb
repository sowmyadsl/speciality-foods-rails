class Product < ActiveRecord::Base
  has_many :reviews
  validates :name, :cost, :country_of_origin, :image, :presence => true

  scope :alphabetical, -> {( order(name: :asc))}

  scope :most_reviews, -> {(
    select("products.id, products.*, count(reviews.id) as reviews_count")
    .joins(:reviews)
    .group("products.id")
    .order("reviews_count DESC")
    )}

  scope :three_most_recent, -> { order(created_at: :desc).limit(3)}

  scope :country, -> { where(country_of_origin: "United States of America") }

end
