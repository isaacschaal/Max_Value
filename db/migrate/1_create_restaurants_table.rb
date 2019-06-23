class CreateRestaurantsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.integer :price_type
      t.integer :meal_type
      t.string :location
      # add ability for multiple types for meal

      t.timestamps

    end
  end
end