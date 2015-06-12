# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(firstname: "Adam", lastname: "Nowak", email: "admin@gmail.com", 
            password: "password", password_confirmation: "password", admin: true )

5.times do
  User.create(firstname: FFaker::Name.first_name, lastname: FFaker::Name.last_name, 
              email: FFaker::Internet.email, password: "password", 
              password_confirmation: "password")
end

3.times do |n|
  c = Category.create(name: "category_#{n+1}")
    rand(3..5).times do
      p = c.products.create(title: FFaker::Product.product_name, 
                            description: FFaker::Lorem.sentence, 
                            price: rand(5..100), user_id: rand(1..6))
      rand(0..3).times do
        p.reviews.create(content: FFaker::Lorem.paragraph, 
                         rating: rand(1..5), user_id: rand(1..6))
      end
    end
end

