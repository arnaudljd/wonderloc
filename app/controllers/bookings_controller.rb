class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :accepted, :rejected]

  def index
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @monument = Monument.find(params[:monument_id])
    @booking = Booking.new(booking_params)
    @booking.monument = @monument
    @booking.user = current_user
    @booking.booked_at = Date.today
    @booking.status = 'Pending'
    if !params[:booking][:start_date].to_date.nil? && !params[:booking][:end_date].to_date.nil?
      @booking.total_price = (params[:booking][:end_date].to_date - params[:booking][:start_date].to_date).to_i * @monument.price
    end
    if @booking.save
      redirect_to dashboard_path(current_user)
    else
      render 'monuments/show', status: :unprocessable_entity
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

  def accepted
    @booking.status = 'Accepted'
    if @booking.save
      redirect_to dashboard_path(current_user)
    else
      render 'dashboards/profile', status: :unprocessable_entity
    end
  end

  def rejected
    @booking.status = 'Rejected'
    if @booking.save
      redirect_to dashboard_path(current_user)
    else
      render 'dashboards/profile', status: :unprocessable_entity
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
