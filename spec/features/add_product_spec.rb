require 'rails_helper'

describe 'create a new product' do
  it 'navigates to products_new_path' do
    visit root_path
    click_on 'Add Products'
    fill_in 'Name', :with => 'Zuchini'
    fill_in 'Cost', :with => 4
    fill_in 'Image', :with =>'url.com'
    fill_in 'Country_of_origin', :with => "USA"
    click_on 'Create Product'
    expect(page).to have_content 'Zuchini'
  end
end
