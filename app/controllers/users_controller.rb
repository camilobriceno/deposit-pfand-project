class UsersController < ApplicationController
  def home
  end

  def index
    @users = User.all
  end

  def new
    @users = User.new
  end

  def create

  end

  def show

    
  end


end
