class HomepageController < ApplicationController
  def index
    @restaurants = Restaurant.order(:name)
    ## THIS should be the filtering aye?
  end
end