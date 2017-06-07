class EventsController < ApplicationController
  def index
  end

  def new
  end

  def create
      @event = Sevent.new event_params
      @user = User.find(session[:user_id])
      @events = Sevent.all
      if @event.save
          redirect_to "/users/#{@user.id}"
      else
          flash['errors'] = @event.errors.full_messages
          redirect_to "/users/#{@user.id}"
      end

  end

  def show
      @event = Sevent.find(params[:id])
      @date = @event.date.strftime("%B %d, %Y")
  end

  private
  def event_params
   params.require(:event).permit(:name, :date, :city, :state)
  end
end
