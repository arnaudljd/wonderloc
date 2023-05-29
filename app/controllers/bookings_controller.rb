class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update]

  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @monument = Monument.find(params[:id])
    @booking = Booking.new(booking_params)
    @booking.monument = @monument
    if @booking.save
      redirect_to monument_path(@monument)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @booking.update(booking_params)
      redirect_to @booking, notice: "booking was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
