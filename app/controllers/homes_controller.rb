class HomesController < ApplicationController
  skip_after_action :verify_authorized

  def home
    @email    = current_user.email
    @bookings = current_user.bookings
    @hideouts = current_user.hideouts
  end
end
