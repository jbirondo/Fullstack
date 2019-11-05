class DropReservationDateIdColumnFromReservation < ActiveRecord::Migration[5.2]
  def change
    remove_column :reservations, :reservation_date_id
    add_column :reservations, :date, :date
  end
end
