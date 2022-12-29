class PagesController < ApplicationController

  def index
    @sneakers = Sneaker.all
  end

end
