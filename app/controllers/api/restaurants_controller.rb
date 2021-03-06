class Api::RestaurantsController < ApplicationController
    def index
        @restaurants = Restaurant.all
        render :index
    end

    def show
        @restaurant = Restaurant.with_attached_photos.find(params[:id])
        render :show
    end

    # def create
    #     @restaurant = Restaurant.new(restaurant_params)
    #     if @restaurant.save
    #         render :show
    #     else
    #         render json: @restaurant.errors.full_messages, status: 422
    #     end
    # end

    private

    def restaurant_params
        params.require(:restaurant).permit(
            :name, 
            :address, 
            :capacity, 
            :style, 
            :description,
            :neighborhood,
            :dining_style,
            :dress_code,
            :chef,
            photos: []
            )
    end
end
