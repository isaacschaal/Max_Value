# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.delete_all

100.times do
  Restaurant.create!(name: Faker::Book.title,
                     description: Faker::Hipster.sentence,
                     image_url: ['pizza.jpg', 'chinese.jpg', 'pastry.jpg'].sample,
                     price_type: [1,2,3,4].sample,
                     breakfast: [0,1].sample,
                     brunch: [0,1].sample,
                     snack: [0,1].sample,
                     lunch: [0,1].sample,
                     dinner: [0,1].sample,
                     address: "1816 Olwien St. Brookings SD, 57006")
end

