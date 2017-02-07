class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.integer :timeslot
      t.integer :user_guest_id
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
