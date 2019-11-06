class Api::ReservationsController < ApplicationController
    before_action :require_logged_in
    def show
        @reservation = Reservation.find(params[:id])
        render :show
    end
    def create
        @reservation = Reservation.new(reservation_params)

        if @reservation.save
            render :show
        else
            render json: @reservation, status: :unprocessable_entity
        end
    end
    private
    def reservation_params
        params.require(:reservation).permit(
\           :date,
            :party_size,
            :restaurant_id, 
            :user_id, 
            )
    end
end