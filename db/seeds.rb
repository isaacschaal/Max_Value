# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.delete_all
Restaurant.create!(name: 'Mr. Pizza',
                   description:
                       %{<p>
                          <em>Better Pizza, Better Price!</em>
                          A great pizza place, with a truly great value!
                          Come enjoy our generous portions and fresh ingredients.
                          </p>},
                   image_url: 'pizza.jpg',
                   price_type: 2,
                   breakfast: 0,
                   brunch: 0,
                   snack: 0,
                   lunch: 0,
                   dinner: 1,
                   address: '1816 Olwien St. Brookings SD')

Restaurant.create!(name: 'Chinese Gourmet',
                   description:
                       %{<p>
                          <em>Large Selection of Traditional Chinese Dishes!</em>
                          From Beef and Chicken to Pork and Prawns, enjoy a traditional chinese meal,
                          cooked with love. Ask about our vast menu selection and meal deals!
                          </p>},
                   image_url: 'chinese.jpg',
                   price_type: 1,
                   breakfast: 0,
                   brunch: 0,
                   snack: 0,
                   lunch: 0,
                   dinner: 1,
                   address: '1816 Olwien St. Brookings SD')

Restaurant.create!(name: 'A Tentadora',
                   description:
                       %{<p>
                          <em>Lisbon's Best Pastries!</em>
                          Try our signature Bolo da Crema or Pasta de Nata! We have a huge selection
                          of pastries and traditional Portuguese cuisine. Great value!
                          </p>},
                   image_url: 'pastry.jpg',
                   price_type: 0,
                   breakfast: 0,
                   brunch: 0,
                   snack: 0,
                   lunch: 0,
                   dinner: 1,
                   address: '1816 Olwien St. Brookings SD')
