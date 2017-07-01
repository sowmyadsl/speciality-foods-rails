# Mario's Speciality Foods

## A Web application to manage products and reviews for each product at Mario's Speciality foods.

##Landing page:

![screenshot](https://github.com/sowmyadsl/speciality-foods-rails/blob/master/app/assets/images/screenshot.png)

It handles the following user stories:

- As a user, I'd like to visit the splash page to see a about description of the company and a list of all products.
- As a user, I'd like to click on a product and navigate to visit its detail page which consists of product name, cost, country of origin, and product reviews.
- As a user, I'd like to be able to add, update, and delete products.
- As a user, I'd like to add a review for a product contains of author, content, and rating.
- As a user, I'd like the form to ensure all fields are filled and add some validations.
- As a user, I'd like the form to ensure review ratings are on a range of 1-5.
- As a user, I'd like the form to ensure content of review is on a range 50-250 characters.
- As a user, I'd like to filter the products by the three most recently added products.
- As a user, I'd like to filter the products by the most reviewed.
- As a user, I'd like to filter to see products made in the USA(locally).
- As a user, I'd like to see sample data (50 products, 250 reviews) seeded into the database.


## Setup/Installation Requirements

* _Clone the repo_
* _Run the following commands in the root of the project to set up the application_
```
$ bundle install
$ rails db:create
$ rails db:schema:load
$ rails db:seed
$ rails s
```

## Technologies:

* HTML/SCSS
* Rails
* Ruby
* Rspec
* Capybara
* Faker


### License

* MIT

Copyright (c) 2017 **Sowmya Dinavahi**
