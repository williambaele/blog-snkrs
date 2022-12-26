class PagesController < ApplicationController

  def index
    @sneakers = Sneaker.all
  end

  private
  def sneaker_params
    params.require(:sneaker).permit(:name, :sku, :drop_date, :description, :estimated_ressell, :model, :brand, :ressell_circle)
  end
end
