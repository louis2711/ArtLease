class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.artpiece_id = params[:artpiece_id]
    @booking.status = "waiting"
    @booking.save!
    redirect_to dashboard_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @artpiece = @booking.artpiece
    @booking.destroy
    redirect_to dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :create)
  end

end

