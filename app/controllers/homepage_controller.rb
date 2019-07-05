class HomepageController < ApplicationController
  def index
    if params[:search]
      @search_results_restaurants = Restaurant.search_by_name_and_description(params[:search])
      respond_to do |format|
        format.js { render partial: 'search-results'}
      end
    else
      @restaurants = Restaurant.all
      # use this to display the homepage
    end
  end
end