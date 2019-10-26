class AddReservationDateToReservation < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :reservation_date_id, :integer 
    remove_column :reservations, :date, :datetime
    remove_column :reservation_dates, :reservation_id, :integer
  end
end
