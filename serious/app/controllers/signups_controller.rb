class SignupsController < ApplicationController
  def destroy
      @user = User.find(session[:user_id])
      @signup = Signup.where(user_id:session[:user_id], event_id: params[:event_id])
      @signup.destroy_all
      redirect_to "/users/#{@user.id}"
  end
end
