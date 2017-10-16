class SessionsController < ApplicationController
  def new
  end
  
  def

  def create
  end

  def destroy
  	User.find(params[:id])
  	redirect_to '/sessions/new'
  end

  def login
  	@user = User.find_by_email(params[:email]) 	
  	if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to "/users/#{@user.id}"
  	else
  		flash[:errors] = "Invalid Combination"
  		redirect_to '/sessions/new'
  	end
  end
end
