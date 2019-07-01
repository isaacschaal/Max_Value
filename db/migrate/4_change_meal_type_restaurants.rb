class ChangeMealTypeRestaurants < ActiveRecord::Migration[5.1]
  def change
    remove_column :restaurants, :meal_type, :integer
    add_column :restaurants, :breakfast, :boolean
    add_column :restaurants, :brunch, :boolean
    add_column :restaurants, :snack, :boolean
    add_column :restaurants, :lunch, :boolean
    add_column :restaurants, :dinner, :boolean


  end
end