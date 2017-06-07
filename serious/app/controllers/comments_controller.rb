class CommentsController < ApplicationController
  def new
      @comment = Comment.create(content:params[:content],user_id:session[:user_id], event_id:params[:event_id])
      @event = Event.find(params[:event_id])
      redirect_to "/events/#{@event.id}"
  end
end
