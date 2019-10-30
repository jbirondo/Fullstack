class AddReservationIdFromReservation < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :reservation_date_id, :integer
  end
end
