class DeleteColumnTimeAvailability < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :time_availability_id
  end
end
