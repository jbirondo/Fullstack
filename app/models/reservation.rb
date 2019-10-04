class Reservation < ApplicationRecord
    validates :date, :duration, :user_id, :restaurant_id
    belongs_to :user,
        foreign_key: :user_id

    belongs_to :restaurant,
        foreign_key: :restaurant_id
end
