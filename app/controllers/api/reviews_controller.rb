class Api::ReviewsController < ApplicationController
    before_action :require_logged_in

    def create
        @review = Review.new(review_params)

        if @review.save
            render :show
        else
            render json: @review, status: :unprocessable_entity
        end
    end

    private
    def review_params
        params.require(:restaurant).permit(
            :body, 
            :rating, 
            :restaurant_id, 
            :user_id, 
            )
    end
end