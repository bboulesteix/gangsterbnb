class DashboardsController < ApplicationController
  def dashboard
    authorize :hideout, :dashboard?
    @email      = current_user.email
    @bookings   = current_user.bookings
    @hideouts   = current_user.hideouts
    @user_id    = current_user.id
  end
end
