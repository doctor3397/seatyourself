class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :city
      t.string :name
      t.integer :timeslot
      t.integer :user_owner_id

      t.timestamps
    end
  end
end
