class ChangeResevationTable < ActiveRecord::Migration[5.0]
  def change
    change_table :reservations do |t|
      t.date :date
      t.integer :party_size
    end
  end
end
