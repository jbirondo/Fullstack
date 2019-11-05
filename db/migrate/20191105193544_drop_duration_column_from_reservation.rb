class DropDurationColumnFromReservation < ActiveRecord::Migration[5.2]
  def change
        remove_column :reservations, :duration
  end
end
