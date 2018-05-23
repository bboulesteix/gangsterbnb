class HideoutsController < ApplicationController
  before_action :set_hideout, only: [:show, :edit, :update, :destroy]

  # GET /hideouts
  def index
    @hideouts = policy_scope(Hideout)
    # Display a map on the flats#index route
    @hideouts = Hideout.where.not(latitude: nil, longitude: nil)

    @markers = @hideouts.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude#,
        # infoWindow: { content: render_to_string(partial: "/hideouts/map_box", locals: { flat: flat }) }
      }
    end
  end

  # GET /hideouts/1
  def show
    @booking = Booking.new
    authorize @hideout
  end

  # GET /hideouts/new
  def new
    @hideout = Hideout.new
    authorize @hideout
  end

  # GET /hideouts/1/edit
  def edit
  end

  # POST /hideouts
  def create
    @hideout = Hideout.new(hideout_params)
    @hideout.user = current_user # need a user to save the hideouts.
    authorize @hideout
    if @hideout.save
      redirect_to hideout_path(@hideout), notice: 'Hideout was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /hideouts/1
  def update
    authorize @hideout
    if @hideout.update(hideout_params)
      redirect_to hideout_path(@hideout), notice: 'Hideout was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /hideouts/1
  def destroy
    @hideout.destroy
    redirect_to hideout_path, notice: 'Hideout was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions
  def set_hideout
    @hideout = Hideout.find(params[:id])
    authorize @hideout
  end

  # Only allow a trusted parameter "white list" through
  def hideout_params
    params.require(:hideout).permit(:name, :description, :address, :price, :capacity, :safety, :photo)
  end
end
