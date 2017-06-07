class UsersController < ApplicationController
  def index
  end

  def create
      @user = User.new user_params
     if @user.save
         session[:user_id] = @user.id
         redirect_to "/users/#{@user.id}"
     else
         flash['errors'] = @user.errors.full_messages
         redirect_to '/'
     end

  end
  def show
      @user = User.find(params[:id])
  end

  def user_params
   params.require(:user).permit(:fname, :lname, :email,:city,:state, :password, :password_confirmation)
  end
end
