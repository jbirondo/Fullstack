json.extract! restaurant, :id, :name, :address, :capacity, :description, :style, :neighborhood, :dining_style, :dress_code, :chef

json.photoUrls restaurant.photos.map { |file| url_for(file) }
# json.reviews restaurant.user_review
json.reviews do 
    json.array! restaurant.reviews do |review|
        json.id review.id
        json.email review.user.email
        json.body review.body
        json.rating review.rating
    end
end