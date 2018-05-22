class HideoutsController < ApplicationController
  before_action :set_hideout, only: [:show, :edit, :update, :destroy]

  # GET /hideouts
  def index
    @hideouts = Hideout.all
  end

  # GET /hideouts/1
  def show
    @booking = Booking.new
  end

  # GET /hideouts/new
  def new
    @hideout = Hideout.new
  end

  # GET /hideouts/1/edit
  def edit
  end

  # POST /hideouts
  def create
    @hideout = Hideout.new(hideout_params)
    @hideout.user = current_user # need a user to save the hideouts.
    if @hideout.save
      redirect_to hideout_path(@hideout), notice: 'Hideout was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /hideouts/1
  def update
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
  end

  # Only allow a trusted parameter "white list" through
  def hideout_params
    params.require(:hideout).permit(:name, :description, :address, :price, :capacity, :safety)
  end
end
