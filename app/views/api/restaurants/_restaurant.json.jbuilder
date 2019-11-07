json.extract! restaurant, :id, :name, :address, :capacity, :description, :style, :neighborhood, :dining_style, :dress_code, :chef

json.photoUrls restaurant.photos.map { |file| url_for(file) }

json.reviews do 
    json.array! restaurant.reviews do |review|
        json.id review.id
        json.email review.user.email
        json.body review.body
        json.rating review.rating
    end
end

json.reservations do
    json.array! restaurant.reservations do |reservation|
        json.date reservation.date
        json.party_size reservation.party_size
        json.user reservation.user
    end
end