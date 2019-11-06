class Reservation < ApplicationRecord
    validates :date, :user_id, :restaurant_id, :party_size, presence: true
    belongs_to :user,
        foreign_key: :user_id

    belongs_to :restaurant,
        foreign_key: :restaurant_id

end
