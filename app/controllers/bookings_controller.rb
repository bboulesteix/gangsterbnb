class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.save
    redirect_to hideout_path(@hideout)
  end

  private

  def booking_params
    params.require(:booking).permit(:checkin, :checkout)
  end

end
