class LikesController < ApplicationController
  def create
      Like.create like_params
      redirect_to '/users/home'
  end

  def destroy
      @like = Like.find(params[:id])
      @like.destroy
      redirect_to '/users/home'

  end

  private
  def like_params
    params.require(:like).permit(:secret_id).merge(user: current_user)
  end
end
