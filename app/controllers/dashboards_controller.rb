class DashboardsController < ApplicationController

  def profile
    @bookings = Booking.where(user_id: (current_user))
    @monuments = Monument.where(user_id: (current_user))
  end
end
