class DropBottlesTable < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :bottle_id
    drop_table :bottles
  end
end
