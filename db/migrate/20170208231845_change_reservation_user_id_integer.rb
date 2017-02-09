class ChangeReservationUserIdInteger < ActiveRecord::Migration[5.0]
  def change
    change_table :reservations do |t|
    t.remove :user_id
    t.integer :user_id
    end
  end
end
