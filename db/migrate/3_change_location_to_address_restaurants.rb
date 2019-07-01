class ChangeLocationToAddressRestaurants < ActiveRecord::Migration[5.1]
  def change
    rename_column :restaurants, :location, :address
  end
end