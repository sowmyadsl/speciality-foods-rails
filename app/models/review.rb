class Review < ActiveRecord::Base
  belongs_to :product

  validates :author, :presence => true
  validates(:content_body, {:presence => true, :length => { :maximum => 250, :minimum => 50 }})
  validates :rating, {:inclusion => { :in => 1..5 }}
end
