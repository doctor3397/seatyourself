class RenameReservations < ActiveRecord::Migration[5.0]
  def change
    change_table :reservations do |t|
      t.remove :timeslot
      t.integer :res_time
    end
  end
end
