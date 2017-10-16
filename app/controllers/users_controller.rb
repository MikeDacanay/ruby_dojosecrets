class UsersController < ApplicationController
  def index
  	@user_name = User.find(params[:id]).name
  end

  def new
  end

  def show
  end

  def edit
  end
end
