json.extract! user, :id, :email

json.reservations do
    json.array! user.reservations do |reservation|
        json.date reservation.date
        json.party_size reservation.party_size
        json.restaurant reservation.restaurant
    end
end