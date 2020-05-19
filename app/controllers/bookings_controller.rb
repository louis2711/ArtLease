class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.status = "waiting"
    @booking.save!
    redirect_to booking_path(@artpiece)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end

