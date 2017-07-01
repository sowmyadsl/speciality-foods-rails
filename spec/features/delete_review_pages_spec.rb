require 'rails_helper' do
  describe 'deletes a review' do
    test_product = Product.create(name: "Zuchini", cost: 4, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRehWYMlLF_6MG1YkVoE14_7wyM2_ExvV2y3NSQY3Gh0KqIpBOyKEi-7hQ",
    country_of_origin: "mexico")
    test_review = test_product.reviews.create(author: "Divya", content_body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud ", rating: 4)
    visit product_path(test_product.id)
    click_on 'Delete'
    expect(page).to have_content 'Review successfully removed!'
  end
end
