class Review < ActiveRecord::Base
  belongs_to :product
  belongs_to :user

  validates :author, :presence => true
  validates(:content_body, {:presence => true, :length => { :maximum => 250, :minimum => 50 }})
  validates (:rating, {:presence => true :length => { :maximum => 5, :minimum => 1}})
end
