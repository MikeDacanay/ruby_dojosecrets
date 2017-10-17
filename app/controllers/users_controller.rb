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

  def show
    @hello = 'bye'
  end 
   
  def edit
  end 

  def update
    @user = User.find(params[:id])
    @user.update(name: params[:Name], email: params[:Email])
    if @user.errors.full_messages.length > 0
      flash[:errors] = @user.errors.full_messages
      redirect_to :back
    else
      redirect_to "/users/#{@user.id}"
    end
  end

  def destroy
    User.find(params[:id]).destroy
    session[:user_id] = nil
    redirect_to '/users/new'
  end  
end
