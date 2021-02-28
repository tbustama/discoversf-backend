class ReservationsController < ApplicationController
    skip_before_action :authorized
    def create 
        reservation = Reservation.create(reservation_params)
        restaurant = Restaurant.find(reservation_params[:restaurant_id])
        render json: restaurant
    end

    private
    def reservation_params
        params.require(:reservation).permit(:user_id, :restaurant_id)
    end
end
