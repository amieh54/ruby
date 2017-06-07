class UsersController < ApplicationController
  def index
      session[:views] ||= 0
  end

  def create
      session[:views] = session[:views] + 1
      session[:result] = params[:user]
      flash[:success] = "Thanks for submitting this form! You have submitted this form #{ session[:views] } time(s) now."
      redirect_to '/users/show'
  end
  def show
      @result = session[:result]

      render 'show.html.erb'
  end
end
