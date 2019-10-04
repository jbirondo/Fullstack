json.extract! reservation, :id, :date, :user_id, :restaurant_id

json.user reservation.user
json.restaurant reservation.restaurant