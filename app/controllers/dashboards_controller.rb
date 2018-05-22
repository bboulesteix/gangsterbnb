class DashboardsController < ApplicationController
  @name     = current_user.name
  @bookings = current_user.bookings
  @hideouts = current_user.hideouts
end
