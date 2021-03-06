class BookingsController < ApplicationController

  # GET /bookings
  def index
    @bookings = policy_scope(Hideout)
  end

  # POST /bookings
  def create
    @booking = Booking.new(booking_params)
    # we need `hideout_id` to asssociate booking with corresponding hideout
    @hideout = Hideout.find(params[:hideout_id])
    @booking.hideout = @hideout
    @booking.user = current_user
    @booking.status = "pending"
    authorize @booking
    if @booking.save
      redirect_to hideout_path(@hideout), notice: 'Booking was successfully created.'
    else
      render 'hideouts/show'
    end
  end

  def update
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.status = params[:status]
    @booking.save
    redirect_to dashboards_path, notice: 'Booking was successfully confirmed.'
  end

  private

  # Only allow a trusted parameter "white list" through
  def booking_params
    params.require(:booking).permit(:checkin, :checkout, :status)
  end
end
