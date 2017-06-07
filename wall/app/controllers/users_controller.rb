class UsersController < ApplicationController
    def index
    end

    def new

    end

    def newcreate
        @user= User.new(username:params[:username])
        if User.where(:username => params[:username]).present?
            session[:current_user] = @user
            @user = User.find_by_username(params[:username])
            redirect_to "/users/#{@user.id}"
        elsif @user.save
            redirect_to "/users/#{@user.id}"
        else
            flash['errors'] = @user.errors.full_messages
            redirect_to '/'
        end
    end

  def show
      @user = User.find(params[:id])
      @messages = Message.all()

  end
end
