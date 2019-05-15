class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit]
  def index
    @restaurants = Restaurant.all
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def new
    @restaurant = Restaurant.new
  end

  def edit
  end

  def show
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:restaurant).permit(:name, :address, :category)
  end
end

# A visitor can see the list of all
# restaurants.

# He can add a new restaurant, and be
# redirected to the show view of that
#new restaurant.

# He can see the details of a restaurant,
# with all the reviews related to
# the restaurant.

# He can add a new review to a
# restaurant
