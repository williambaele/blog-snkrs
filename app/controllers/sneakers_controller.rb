class SneakersController < ApplicationController
  def index
    @sneakers = Sneaker.all
  end

  def show
    if Sneaker.exists?(params[:id])
      @sneaker = Sneaker.find(params[:id])
    else
      redirect_to root_path
    end
  end
  def create
    @sneaker = Sneaker.new(sneaker_params)
    if @sneaker.save!
      redirect_to sneaker_path(@sneaker)
      flash[:success] = "Your pair has been saved."
    end
  end
  def new
    @sneaker = Sneaker.new
  end

  def edit
    @sneaker = Sneaker.find(params[:id])
  end

  def update
    @sneaker = Sneaker.find(params[:id])
    if @sneaker.update(sneaker_params)
      redirect_to sneaker_path(@sneaker)
    else
      redirect_to root_path
    end
  end

  def destroy
    @sneaker = Sneaker.find(params[:id])
    if @sneaker.destroy!
      redirect_to root_path
    end
  end

  private
  def sneaker_params
    params.require(:sneaker).permit(:name, :sku, :drop_date, :description, :estimated_ressell, :model, :brand, :retail)
  end
end
