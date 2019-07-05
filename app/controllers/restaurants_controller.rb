class RestaurantsController < ApplicationController
  # before_action :load_restaurant, only: [:show, :edit, :update, :destroy]

  # GET /restaurants
  # GET /restaurants.json
  def index
    @restaurants = Restaurant.order(:name)
  end

  # GET /restaurants/1
  # GET /restaurants/1.json
  def show
    load_restaurant
  end

  # GET /restaurants/new
  def new
    @restaurant = Restaurant.new
  end

  # GET /restaurants/1/edit
  def edit
    load_restaurant
  end

  # POST /restaurants
  # POST /restaurants.json
  def create
    @restaurant = Restaurant.new(restaurant_params)

    respond_to do |format|
      if @restaurant.save
        format.html {redirect_to @restaurant, notice: 'Restaurant was successfully created.'}
        format.json {render :show, status: :created, location: @restaurant}
      else
        format.html {render :new}
        format.json {render json: @restaurant.errors, status: :unprocessable_entity}
      end
    end
  end

  # PATCH/PUT /restaurants/1
  # PATCH/PUT /restaurants/1.json
  def update
    load_restaurant

    respond_to do |format|
      if @restaurant.update(restaurant_params)
        format.html {redirect_to @restaurant, notice: 'Restaurant was successfully updated.'}
        format.json {render :show, status: :ok, location: @restaurant}

        # @restaurants = Restaurant.all
        # ActionCable.server.broadcast 'restaurants',
        #                              html: render_to_string('restaurants', layout: false)
        #
        # RE READ ABOUT THIS, HOW TO SET UP ACTITON CABLE?
      else
        format.html {render :edit}
        format.json {render json: @restaurant.errors, status: :unprocessable_entity}
      end
    end
  end

  # fix
  def destroy
    load_restaurant
    @restaurant.destroy
    redirect_to restaurants_url, notice: 'Restaurant was successfully destroyed.'
  end

  private

  def load_restaurant
    @restaurant ||= Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :description, :image_url, :price_type, :meal_type, :address)
  end
end