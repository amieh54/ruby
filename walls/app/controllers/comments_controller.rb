class CommentsController < ApplicationController
  def index
      @user = session[:current_user]
      @comments = "testtesttest"
      @comment = Comment.new(content:params[:content], user_id:params[:user_id], message_id:params[:message_id])
      if @comment.save
          flash[:success] = "Successfully posted a comment."
          redirect_to "/users/#{@user}"
      else
          flash[:errors] = @comment.errors.full_messages
          redirect_to "/users/#{@user}"
      end

  end


  def add
  end

  def create
  end

  def destroy
  end

  def update
  end

  def edit
  end
end
