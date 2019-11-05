class DropReservationDatesTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :reservation_dates
  end
end
