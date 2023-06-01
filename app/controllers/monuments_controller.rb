class MonumentsController < ApplicationController
  before_action :set_monument, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      @monuments = Monument.search_by_name_description_and_address(params[:query])
    else
      @monuments = Monument.all
    end
    @markers = @monuments.geocoded.map do |monument|
      {
        lat: monument.latitude,
        lng: monument.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { monument: monument }),
        marker_html: render_to_string(partial: "marker", locals: { monument_id: monument.id })
      }
    end
  end

  def show
    @booking = Booking.new
    @booking.monument = @monument
  end

  def new
    @monument = Monument.new
  end

  def create
    @monument = Monument.new(monument_params)
    @monument.user = current_user
    if @monument.save
      redirect_to dashboard_path(current_user), notice: "Monument was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @monument.update(monument_params)
      redirect_to @monument, notice: "Monument was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @monument.destroy
    redirect_to monuments_path, notice: "Monument was successfully destroyed."
  end

  private

  def set_monument
    @monument = Monument.find(params[:id])
  end

  def monument_params
    params.require(:monument).permit(:name, :picture, :price, :description, :address, :availability, photos: [])
  end
end
