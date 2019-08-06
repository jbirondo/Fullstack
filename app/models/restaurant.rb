class Restaurant < ApplicationRecord
    validates :name, :address, :capacity, presence: true
end
