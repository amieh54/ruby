class SessionsController < ApplicationController
       def new
           #
       end
       def create
           @user = User.find_by_email(params[:Email])
           if @user && @user.authenticate(params[:Password])
               session[:user_id] = @user.id
               redirect_to "/users/#{@user.id}"
           else
               flash[:newerrors] = ["Invalid Combination"]
               redirect_to "/sessions/new"
           end
       end
       def destroy
           reset_session
           redirect_to "/sessions/new"
       end
   end

#    if @user
#        session[:user_id] = @user.id
# && @user.authenticate(params[:password])
