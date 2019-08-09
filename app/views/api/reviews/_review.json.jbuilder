json.extract! review, :id, :rating, :body, :restaurant_id, :user_id

json.user review.user
json.restaurant review.restaurant