class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show

    @restaurant = Restaurant.find(params[:id])
    @reservation = Reservation.new(restaurant_id: params[:id])
  end
end
