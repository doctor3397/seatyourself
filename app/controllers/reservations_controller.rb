class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def show
  #  @reservation = Reservation.new
  end

  def new
    @reservation = Reservation.new
  end

  def create
    reservation = Reservation.new(reservation_params)

    if reservation.save
      redirect_to user_path(params[:reservation][:user_guest_id])
    else
      redirect_to restaurant_path(params[:reservation][:restaurant_id])
    end
  end

  def edit
  end

  def update
  end

  def destroy
   @reservation = Reservation.find(params[:id])
   @reservation.destroy
   redirect_to restaurants_url
  end

  private

  def reservation_params
   params.require(:reservation).permit(:party_size, :date, :restaurant_id, :user_guest_id)
  end

end
