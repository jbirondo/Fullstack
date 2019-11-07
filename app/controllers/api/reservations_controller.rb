class Api::ReservationsController < ApplicationController
    before_action :require_logged_in
    def show
        @reservation = Reservation.find(params[:id])
        render :show
    end
    def create
        @reservation = Reservation.new(reservation_params)

        @restaurant = Restaurant.find_by_id(reservation_params[:restaurant_id])

        # if @restaurant.capacity > @restaurant.reservations.length
        if @reservation.save
            render :show
        else
            render json: @reservation, status: :unprocessable_entity
        end
        # else 
        #     debugger
        #     render json: ["Reservations full for this date, pleease select another date"], status: :unprocessable_entity
        # end
    end
    private
    def reservation_params
        params.require(:reservation).permit(
            :date,
            :party_size,
            :restaurant_id, 
            :user_id, 
            )
    end
end