class Review < ActiveRecord::Base
  belongs_to :product

  validates :author, :product_id, :rating, :presence => true
  validates :content_body, length: { in: 50..250 }
  validates :rating, numericality: { only_integer: true, greater_than: 0, less_than: 6 }
 
end
