class HomepageController < ApplicationController
  def index
    @restaurants = if params[:search]
                     Restaurant.search_by_name_and_description(params[:search])
                   else
                     Restaurant.all
                   end

    respond_to do |format|
      format.js
      format.html
    end
  end
end