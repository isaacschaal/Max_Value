class Restaurant < ApplicationRecord
  enum meal_type: {
      "Breakfast"   => 0,
      "Brunch"      => 1,
      "Snacks"      => 2,
      "Lunch"       => 3,
      "Dinner"      => 4
  }
  enum price_type: {
      'All Prices' => 0,
      "$"   => 1,
      "$$"      => 2,
      "$$$"      => 3,
      "$$$$"       => 4
  }

  validates :name, :description, :image_url,
            :location, :meal_type, :price_type,  presence: true
  validates :name, uniqueness: true
  validates :image_url, allow_blank: true, format: {
      with: %r{\.(gif|jpg|png)\Z}i,
      message: 'must be a URL for GIF, JPG or PNG image.'
  }

end