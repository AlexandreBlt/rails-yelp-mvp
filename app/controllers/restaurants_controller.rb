class RestaurantsController < ApplicationController
before_action :set_restaurant, only: [:show]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(params_restaurant)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new, status: :unprocessable_entity
    end
  end

private

def set_restaurant
  @restaurant = Restaurant.find(params[:id])
end

def params_restaurant
  params.require(:restaurant).permit(:name, :address, :category)
end

end
