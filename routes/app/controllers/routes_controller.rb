class RoutesController < ApplicationController

  def index
    #   @user = User.all
  end
  def hello
  end

  def sayhellojoe
      render "joe.html.erb"
  end

  def sayhellomichael
      redirect_to 'http://localhost:3001/routes/say/hello/joe'
  end

  def say



  end
  def times
    if not session[:count]
        session[:count] = 0
    end
    session[:count] += 1

    @count = session[:count]
  end

  def restart
      session.clear
      redirect_to 'http://localhost:3001/times'
  end


end
