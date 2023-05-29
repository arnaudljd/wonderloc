class MonumentsController < ApplicationController
  before_action :set_monument, only: [:show]


  def index
    @monuments = Monument.all
  end

  def show
  end

  def new
    @monument = Monument.new
  end

  def create
    @monument = Monument.new(params_monument)
  end

  private

  def set_monument
    @monument = Monument.find(params[:id])
  end

  def params_monument
    params.require(:monument).permit(:name, :picture, :price, :description, :address, :availability)
  end
end
