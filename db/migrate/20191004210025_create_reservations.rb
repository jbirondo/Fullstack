class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.timestamp :date, null: false
      t.integer :duration, null: false
      t.integer :user_id, null: false
      t.integer :restaurant_id, null: false
      t.timestamps
    end
  end
end
