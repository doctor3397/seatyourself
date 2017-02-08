class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @user = User.find(3)
    @restaurant = Restaurant.find(params[:id])
    @reservation = Reservation.new(restaurant_id: params[:id])
  end
end
