class SneakersController < ApplicationController
  require 'date'
  def index
    @sneakers = Sneaker.all
  end

  def show
    @sneaker = Sneaker.find(params[:id])
  end
  def new
    @sneaker = Sneaker.new
  end

  private
  def sneaker_params
    params.require(:sneaker).permit(:name, :sku, :drop_date)
  end
end
