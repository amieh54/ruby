class SecretsController < ApplicationController
  def index
  end

  def show
      @user = User.find(params[:user_id])
      @secrets = @user.secrets
  end

  def create
      Secret.create(content:params[:content], user:current_user)
      redirect_to '/users/home'
  end
  def destroy
      @secret = Secret.find(params[:id])
      @secret.destroy
      redirect_to '/users/home'
  end


end
