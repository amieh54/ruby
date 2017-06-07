class UsersController < ApplicationController
  def new

  end

  def show
      @user = User.find(params[:id])
  end

  def home
      @secrets = Secret.all
      render 'secrets/index.html.erb'
  end
  def create
      @user = User.new user_params
      if @user.save
          session[:user_id] = @user.id
          redirect_to "/users/#{@user.id}"
      else
          flash['newerrors'] = @user.errors.full_messages
          redirect_to '/users/new'
      end
  end
  def edit
      @user = User.find(params[:id])
  end

  def update
      @user = User.find(params[:id])
      @user.assign_attributes user_params
      if @user.valid? == true
         @user.save user_params
         redirect_to "/users/#{@user.id}"
      else
          flash[:errors] = @user.errors.full_messages
          @user = User.find(params[:id])
          redirect_to "/users/#{@user.id}/edit"
      end
  end

  def destroy
      render 'delete.html.erb'
  end

  def delete
      @user = User.find(session[:user_id])
      if params[:answer] = "Yes"
          @user.destroy
          reset_session
          redirect_to "/users/new"
      else
          redirect_to "users/#{@user.id}"
      end

  end
  def all
      @users = User.all
  end
  def user_params
     params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
