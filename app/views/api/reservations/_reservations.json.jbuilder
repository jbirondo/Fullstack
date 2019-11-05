json.extract! reservation, :id, :user_id, :restaurant_id, :date

json.user reservation.user
json.restaurant reservation.restaurant