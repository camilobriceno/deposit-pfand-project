class Bottle < ApplicationRecord
  belongs_to :user
  belongs_to :time_availability
end
