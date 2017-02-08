class ChangeReservationsUserId < ActiveRecord::Migration[5.0]
  def change
    change_table :reservations do |t|
    t.remove :user_guest_id
    t.string :user_id
    end
  end
end
