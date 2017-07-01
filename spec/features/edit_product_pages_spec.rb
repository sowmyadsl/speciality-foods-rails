require 'rails_helper'

describe "the edit a product process" do
  it "edits a product" do
    test_product = Product.create(name: "Zuchini", cost: 4, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxkPLSHc1tK5rO_9MwlQncfnBxW2aFHxt2JO9Lj7t9V0Ct4JIX", country_of_origin: 'USA')
    visit product_path(test_product.id)
    click_on 'Edit'
    fill_in 'Name', :with => 'Sweet Potatoes'
    fill_in 'Cost', :with => 6
    fill_in 'Image', :with => 'http://www.freeiconspng.com/uploads/olives-png-1.png'
    fill_in 'Country of origin', :with => 'Mexico'
    click_on 'Update Product'
    expect(page).to have_content 'Product successfully updated!'
  end

  it "gives error when no name, cost,image, or country are entered" do
    test_product = Product.create(name: "Zuchini", cost: 4, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxkPLSHc1tK5rO_9MwlQncfnBxW2aFHxt2JO9Lj7t9V0Ct4JIX", country_of_origin: 'USA')
    visit edit_product_path(test_product.id)
    fill_in 'Name', :with => ''
    fill_in 'Cost', :with => ''
    fill_in 'Image', :with => ''
    fill_in 'Country of origin', :with => ''
    click_on 'Update Product'
    expect(page).to have_content 'errors'
  end
end
