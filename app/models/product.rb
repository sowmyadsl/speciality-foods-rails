class Product < ActiveRecord::Base
  belongs_to :user
  
  validates :name, :presence => true
  validates :cost, :presence => true
  validates :country_of_origin, :presence => true
  validates :image, :presence => true
end
