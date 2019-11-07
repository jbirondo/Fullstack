json.extract! reservation, :id, :user_id, :restaurant_id, :date, :party_size

json.user reservation.user
json.restaurant reservation.restaurant