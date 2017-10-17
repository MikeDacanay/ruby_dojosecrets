class UsersController < ApplicationController
  def index
  	@user_name = User.find(params[:id]).name
  end

  def create
  	user1 = User.create(name: params[:Name], email: params[:Email], password: params[:Password])
    if user1.errors.full_messages.length > 0
      flash[:errors] = user1.errors.full_messages
      redirect_to '/users/new'
    else
      redirect_to '/sessions/new'
    end
  end

  def new
  end

  def edit
  end 
  
  private
end
