class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :deposit]

  def home

  end

  def zipcode
    raise
  end


  def deposit

  end

  def index
    @bottles = Bottle.all
  end

  def show
    @bottles = Bottle.find(params[:id])
  end

end
