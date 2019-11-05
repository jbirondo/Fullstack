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

json.reservation_dates do
    json.array! restaurant.reservation_dates do |reservation_date|
        json.id reservation_date.id
        json.date reservation_date.date
    end
end