class Api::ReservationDatesController < ApplicationController
    before_action :require_logged_in

    def show
        @restaurant = Restaurant.find(params[:id])
        render :show
    end

    def create
        @reservation_date = ReservationDate.new(reservation_date_params)
        if @review.save
            render :show
        else
            render json: @review, status: :unprocessable_entity
        end
    end


    private
    def reservation_date_params
        params.require(:reservation_date).permit(
            :date,
            :restaurant_id
        )
    end
end