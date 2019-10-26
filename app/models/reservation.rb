class Reservation < ApplicationRecord
    validates :date, :duration, :user_id, :restaurant_id, :reservation_date_id, presence: true
    belongs_to :user,
        foreign_key: :user_id

    belongs_to :restaurant,
        foreign_key: :restaurant_id

    belongs_to :reservation_date,
        foreign_key: :reservation_date_id
end
