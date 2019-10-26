class ReservationDate < ApplicationRecord
    validates :date, :restaurant_id, presence: true

    belongs_to :restaurant,
        foreign_key: :restaurant_id

    has_many :reservations
end
