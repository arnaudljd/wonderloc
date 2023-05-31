class DashboardsController < ApplicationController

  def profile
    @bookings = current_user.bookings
    @monuments = current_user.monuments
    @demands = Booking.all.select {|booking| booking.monument.user == current_user}
    @future_bookings = @bookings.where(end_date: Date.today) + @bookings.where('start_date >= ?', Date.today)
    @passed_bookings = @bookings.where('end_date < ?', Date.today)
  end
end
