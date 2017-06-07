class UsersController < ApplicationController
    def index
      end

      def create
          @user = User.new user_params
         if @user.save
             session[:user_id] = @user.id
             redirect_to "/users/#{@user.id}"
         else
             flash['errors'] = @user.errors.full_messages
             redirect_to '/'
         end

      end
      def show
          @user = User.find(params[:id])
          @events = Event.where(state:@user.state)
          @non = Event.where.not(state:@user.state)

      end

      def edit
          @user = User.find(params[:id])

      end

      def update
          @user = User.find(session[:user_id])
          @user.assign_attributes(first_name:params[:first_name], last_name:params[:last_name], email:params[:email], city:params[:city], state:params[:state])
          if @user.valid? == true
              @user.save
              redirect_to "/users/#{@user.id}"
          else
              flash['errors'] = @user.errors.full_messages
              redirect_to "/users/#{@user.id}/edit"
          end
      end
      private
      def user_params
       params.require(:user).permit(:first_name, :last_name, :email,:city,:state, :password, :password_confirmation)
      end
    end
