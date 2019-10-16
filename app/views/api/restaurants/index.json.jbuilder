 @restaurants.each do |restaurant|
  json.set! restaurant.id do
    json.partial! 'api/restaurants/restaurant', restaurant: restaurant
    # json.extract! restaurant, :id, :name, :address, :capacity, :description, :style, :neighborhood, :dining_style, :dress_code, :chef
    # json.photoUrls restaurant.photos.map { |file| url_for(file) }
  end
end