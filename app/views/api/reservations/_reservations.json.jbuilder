json.extract! reservation, :id, :user_id, :restaurant_id, :reservation_date_id

json.user reservation.user
json.restaurant reservation.restaurant
json.reservation_date reservation.reservation_date