require 'rails_helper'

describe 'add a new product' do
    it 'navigates from root_path to new_product_path ' do
      visit root_path
      click_on 'Add Products'
      fill_in 'Name', :with => 'Zuchini'
      fill_in 'Cost',:with => 4
      fill_in 'Image',:with => 'https://i0.wp.com/www.tasteofsicily.co.uk/wp-content/uploads/2014/11/olive-regina.jpg?resize=350%2C300'
      fill_in 'Country of origin',:with => 'USA'
      click_on 'Create Product'
      expect(page).to have_content 'Zuchini'
    end

    it "gives error when no name, cost, image and country are entered" do
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content 'errors'
  end
end
