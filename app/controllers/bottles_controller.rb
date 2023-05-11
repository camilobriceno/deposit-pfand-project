class BottlesController < ApplicationController

  def index
    @bottles = Bottle.all
  end

  def new
    @bottles = Bottle.new
  end

  def create
    @bottle = Bottle.new(bottle_params)
    @bottle.save
    redirect_to user_bottle_path(@bottle)
  end

  def show
    @bottles = Bottle.find(params[:user_id/bottles])
  end
end

private

def bottle_params
  params.require(:user).permit(:user_id, :first_name, :last_name, :zipcode, :password, :email, :provider)
end
