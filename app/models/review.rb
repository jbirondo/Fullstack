class Review < ApplicationRecord
    validates :body, :rating, :restaurant_id, :user_id, presence: true
    belongs_to :user,
        foreign_key: :user_id

    belongs_to :restaurant,
        foreign_key: :restaurant_id
end
