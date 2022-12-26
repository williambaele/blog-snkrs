class SneakersController < ApplicationController
  def index
    @sneakers = Sneaker.all
  end

  def show
    if Sneaker.exists?(params[:id])
      @sneaker = Sneaker.find(params[:id])
    else
      redirect_to root_path
      flash[:message] = "Something went wrong"
    end
  end
  def create
    @sneaker = Sneaker.new(sneaker_params)
    if @sneaker.save!
      redirect_to sneaker_path(@sneaker)
    end
  end
  def new
    @sneaker = Sneaker.new
  end

  private
  def sneaker_params
    params.require(:sneaker).permit(:name, :sku, :drop_date, :description, :estimated_ressell, :model, :brand)
  end
end
