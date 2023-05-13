class Booking < ApplicationRecord
  belongs_to :user

  def self.price_calculator(type, number)
    case type
    when "Cans"
      return number * 0.25
    when "Plastic"
      return number * 0.15
    when "Glass"
      return number * 0.08
    else
      return 0
    end
  end
end
