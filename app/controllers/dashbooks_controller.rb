class DashbooksController < ApplicationController
  def dashbook
    authorize :hideout, :dashboard?
    @bookings   = current_user.bookings
    @user_id    = current_user.id
  end
end
