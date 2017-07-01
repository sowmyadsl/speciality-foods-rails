require 'rails_helper'

describe "the add a review to product" do
  it "adds a review to a product" do
    test_product = Product.create(name: "Zuchini", cost: 4, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRehWYMlLF_6MG1YkVoE14_7wyM2_ExvV2y3NSQY3Gh0KqIpBOyKEi-7hQ",
    country_of_origin: "mexico")
    visit product_path(test_product)
    click_on 'Review now!'
    fill_in 'Author', :with => "Divya"
    fill_in 'Content', :with => "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud"
    select('4', :from => 'Rating')
    click_on 'Create Review'
    expect(page).to have_content 'Review successfully created!'
  end

  it "gives error when no author, content, or rating is entered" do
    test_product = Product.create(name: "Zuchini", cost: 4, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRehWYMlLF_6MG1YkVoE14_7wyM2_ExvV2y3NSQY3Gh0KqIpBOyKEi-7hQ",
    country_of_origin: "mexico")
   visit new_product_review_path(test_product)
   fill_in 'Author', :with => ''
   fill_in 'Content', :with => ''
   select('', :from => 'Rating')
   click_button 'Create Review'
   expect(page).to have_content 'errors'
 end
end
