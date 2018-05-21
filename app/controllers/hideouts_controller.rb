class HideoutsController < ApplicationController
  before_action :set_hideout, only: [:show, :edit, :update, :destroy]

  def index
    @hideouts = Hideout.all
  end

  def show
  end

  def new
    @hideout = Hideout.new
  end

  def create
    @hideout = Hideout.new(hideout_params)
    @hideout.save
    @redirect_to hideout_path(@hideout)
  end

  def edit
  end

  def update
    @hideout.update(hideout_params)
    @redirect_to hideout_path(@hideout)
  end

  def destroy
    @hideout.destroy
    @redirect_to hideout_path
  end

  private

  def set_hideout
    @hideout = Hideout.find(params[:id])
  end
end


