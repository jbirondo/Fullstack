class DeleteReservationIdFromReservation < ActiveRecord::Migration[5.2]
  def change
    remove_column :reservations, :reservation_date_id
  end
end
