class Restaurant < ApplicationRecord

  enum price_type: {
      'All Prices' => 0,
      "$"   => 1,
      "$$"      => 2,
      "$$$"      => 3,
      "$$$$"       => 4
  }

  geocoded_by :address
  after_validation :geocode


  validates :name, :description, :image_url,
            :address, :price_type,  presence: true
  # should make it so one is selected huh?
  #validates :breakfast, :brunch, :snack, :lunch, :dinner, presence: true
  validates :name, uniqueness: true
  validates :image_url, allow_blank: true, format: {
      with: %r{\.(gif|jpg|png)\Z}i,
      message: 'must be a URL for GIF, JPG or PNG image.'
  }

end