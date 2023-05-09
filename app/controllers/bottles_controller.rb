class BottlesController < ApplicationController
  def index
    @bottles = Bottle.all
  end

  def new

  end
end
