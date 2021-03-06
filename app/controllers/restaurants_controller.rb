class RestaurantsController < ApplicationController

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      flash[:success] = 'Restaurant added.'
      redirect_to root_url
    else
      render 'new'
    end
  end

  private

    def restaurant_params
      params.require(:restaurant).permit(:name)
    end

end
