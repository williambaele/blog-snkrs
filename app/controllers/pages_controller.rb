class PagesController < ApplicationController
  require 'date'
  def index
    @sneakers = Sneaker.all
  end
end
