class MonumentsController < ApplicationController
  before_action :set_monument, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @monuments = Monument.all
  end

  def show
  end

  def new
    @monument = Monument.new
  end

  def create
    @monument = Monument.new(monument_params)
    if @monument.save
      redirect_to @monument, notice: "Monument was successfully created."
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
