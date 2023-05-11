class AddUsersToTimeAvailability < ActiveRecord::Migration[7.0]
  def change
    add_reference :time_availabilities, :users, null: false, foreign_key: true
  end
end
