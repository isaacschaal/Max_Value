json.extract! restaurant, :id, :name, :description, :image_url, :name, :description, :image_url, :address,
              :price_type, :breakfast, :brunch, :snack, :lunch, :dinner, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)