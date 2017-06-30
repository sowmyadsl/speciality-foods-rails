require 'rails_helper'

describe 'admin/user signs in' do
  it 'navigates from root_path ' do
    visit root_path
    click_on 'Sign in'
    fill_in 'Email', :with => 'divya.dsl@gmail.com'
    fill_in 'Password',:with => 'password'
    click_on 'Sign in'
    expect(page).to have_content ''
  end
    it 'navigates from root_path to new_product_path ' do
      visit root_path
      click_on 'Add Products'
      fill_in 'Name', :with => 'Zuchini'
      fill_in 'Cost',:with => 4
      fill_in 'Image',:with => 'http:/www.pic.com'
      fill_in 'Country of origin',:with => 'USA'
      click_on 'Create Product'
      expect(page).to have_content 'Zuchini'
    end

end
