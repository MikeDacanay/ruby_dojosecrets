class SecretsController < ApplicationController
  def index
  	@all_secrets = Secret.all.order(id: :desc)
    @all_likes = Like.where(user: current_user).select(:secret_id)
  end

  def create
  	Secret.create(content: params[:Content], user: User.find(params[:id]))
  	redirect_to "/users/#{current_user.id}"
  end

  def destroy
  	secret1 = Secret.find(params[:secret_id])
  	secret1.destroy if secret1.user == current_user
  	redirect_to "/users/#{current_user.id}"
  end
end
