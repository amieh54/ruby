class MessagesController < ApplicationController
  def new
      @user = User.find(params[:id])
  end

  def index

  end

  def show
  end

  def create
      @message= Message.new(content:params[:content], user_id:params[:user_id])
      @user = User.find(params[:user_id])
      if @message.save
          flash[:success] = "Successfully posted a message."
          redirect_to "/users/#{@user.id}"
      else
          flash[:errors] = @message.errors.full_messages
          redirect_to "/users/#{@user.id}"
      end
      @messages = Message.all
  end

  def comment
      @comment = Comment.new(content:params[:content], user_id:params[:user_id], message_id:params[:message_id])

  end
end
