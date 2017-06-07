class EventsController < ApplicationController
  def index
  end

  def new
  end

  def create
      @event = Event.new(name:params[:name], date:params[:date], city:params[:city], state:params[:state], user_id:session[:user_id])
      @user = User.find(session[:user_id])
      @events = Event.where(state=@user.state)
      @non_state

      if @event.save
          redirect_to "/users/#{@user.id}"
      else
          flash['errors'] = @event.errors.full_messages
          redirect_to "/users/#{@user.id}"
      end

  end

  def show
      @event = Event.find(params[:id])
      @date = @event.date.strftime("%B %d, %Y")

  end

  def join
      @event = Event.find(params[:id])
      @user = User.find(session[:user_id])
      @signup = Signup.create(user_id:session[:user_id], event_id:params[:id])
      redirect_to "/users/#{@user.id}"
  end

  def edit
      @event = Event.find(params[:id])

  end

  def update
      @user = User.find(session[:user_id])
      @event = Event.find(params[:id])
      @event.update(name:params[:name], date:params[:date], city: params[:city], state:params[:state], user_id:session[:user_id])
      redirect_to "/users/#{@user.id}"
  end

  def destroy
      @user = User.find(session[:user_id])
      @event = Event.find(params[:id])
      @event.destroy
      redirect_to "/users/#{@user.id}"

  end
end
