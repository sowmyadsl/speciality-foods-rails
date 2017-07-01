require 'rails_helper'

describe 'deletes a product' do
  it 'deletes a product' do
    test_product = Product.create(name: "Zuchini", cost: 4, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxkPLSHc1tK5rO_9MwlQncfnBxW2aFHxt2JO9Lj7t9V0Ct4JIX", country_of_origin: 'USA')
    visit product_path(test_product.id)
    click_on "Delete"
    expect(page).to have_content 'Product successfully removed!'
  end
end
