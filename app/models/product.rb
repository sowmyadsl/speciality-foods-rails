class Product < ActiveRecord::Base
  has_many :reviews
  
  validates :name, :cost, :country_of_origin, :image, :presence => true
end
