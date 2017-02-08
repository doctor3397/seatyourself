class ChangeRestaurants < ActiveRecord::Migration[5.0]
  def change
    change_table :restaurants do |t|
      t.string :cuisine
      t.integer :capcity
    
    end
  end
end
