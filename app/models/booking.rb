class Booking < ApplicationRecord
  belongs_to :time_availability
  belongs_to :user
end
