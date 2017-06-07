class UsersController < ApplicationController

    def index
    end

    def new

    end

    def newcreate
        @user= User.new(username:params[:username])
        if User.where(:username => params[:username]).present?
            @user = User.find_by_username(params[:username])
            session[:current_user] = @user.id
            redirect_to "/users/#{session[:current_user]}"
        elsif @user.save
            session[:current_user] = @user.id
            redirect_to "/users/#{session[:current_user]}"
        else
            flash['errors'] = @user.errors.full_messages
            redirect_to '/users/new'
        end
    end

  def show
      @user = User.find(params[:id])
      @messages = Message.all()
      @comments = Comment.all

  end
end
