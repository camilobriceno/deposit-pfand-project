class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home deposit]

  def home
  end

  def zipcode
  end

  def deposit
  end

  def index
    @bottles = Bottle.all
  end

  def show
    @bottles = Bottle.find(params[:id])
  end

  def new
  end
end
