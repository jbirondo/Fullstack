class Restaurant < ApplicationRecord
    validates :name, :address, :capacity, 
        :description, :style, :neighborhood, 
        :dining_style, :dress_code, :chef, 
        presence: true
    has_many :reviews
    has_many :reservation_dates
    has_many :reservations
    has_many_attached :photos

end
