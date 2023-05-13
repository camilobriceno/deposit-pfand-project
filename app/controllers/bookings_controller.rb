class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
    @user = current_user
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.save
    redirect_to user_booking_path(current_user, @booking)
  end

  def show
    @booking = Booking.find(params[:user_id])
    @user = User.find(params[:user_id])
  end

  private

  def booking_params
    params.require(:booking).permit(:bottle_type, :quantity)
  end
end
