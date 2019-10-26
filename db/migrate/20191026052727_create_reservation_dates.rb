class CreateReservationDates < ActiveRecord::Migration[5.2]
  def change
    create_table :reservation_dates do |t|
      t.date :date, null: false
      t.integer :restaurant_id, null: false
      t.integer :reservation_id
      t.timestamps
    end
  end
end
