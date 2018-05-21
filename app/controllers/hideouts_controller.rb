class HideoutsController < ApplicationController
  def index
    @hideouts = Hideout.all
  end

  def new
  end

  def create
  end
end
