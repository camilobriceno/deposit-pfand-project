class ChangeTimeAvailabilityToNil < ActiveRecord::Migration[7.0]
  def change
    change_column_null :bookings, :time_availability_id, :bigint, null: true
  end
end
