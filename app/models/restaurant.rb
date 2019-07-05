class Restaurant < ApplicationRecord

  enum price_type: {
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
  validates :image_url, allow_blank: true, format: {
      with: %r{\.(gif|jpg|png)\Z}i,
      message: 'must be a URL for GIF, JPG or PNG image.'
  }

  ## SEARCHING
  include PgSearch
  pg_search_scope :search_by_name_and_description, :against => [:name, :description],
                  using: {
                      :tsearch => {:prefix => true}
                  }

end