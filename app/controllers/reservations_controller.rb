class ReservationsController < ApplicationController



  def index
    @reservations = Reservation.all
  end

  def show

  end

  def new
    @reservation = Reservation.new
  end

  def create
    puts params

    reservation = Reservation.new(reservation_params)
    #reservation.date = Date.strptime('%Y-%m-d')
    reservation.user = User.find(session[:user_id])
    restaurant = Restaurant.find(params[:reservation][:restaurant_id])
    if reservation.party_size < restaurant.meals_remaining(params[:reservation][:date])
       if reservation.save
        redirect_to user_path(reservation.user)
      else
        redirect_to restaurant_path(params[:reservation][:restaurant_id])
      end
     else
       flash[:error] = "Quantity too high! Do not exceed"
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
   params.require(:reservation).permit(:party_size, :date, :restaurant_id, :user_id)
  end

end
