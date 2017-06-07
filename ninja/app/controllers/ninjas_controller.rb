class NinjasController < ApplicationController
  def index
        session[:goldcount] ||=  0
        session[:activities] ||= []
        @goldcount = session[:goldcount]
        @activities = session[:activities]
  end

  def processgold
      count = 0
      location = 0
      fulltime = Time.now
      date = fulltime.strftime("%b %d, %Y")
      time = fulltime.strftime("%I:%M %p")



      if params[:location] == 'farm'
          count = rand(10..20)
          session[:goldcount] = session[:goldcount] + count
          location = 'farm'

      elsif params[:location] == 'cave'
          count = rand(5..10)
          session[:goldcount] = session[:goldcount]+ count
          location = 'cave'

      elsif params[:location] == 'house'
          count = rand(2..5)
          session[:goldcount] = session[:goldcount]+ count
          location = 'house'

      elsif params[:location] == 'casino'
          count = rand(-50..50)
          session[:goldcount] = session[:goldcount]+ count
          location = 'casino'
      end
      if count > 0
          session[:activities] << "Earned #{count} golds from the #{location}! - #{date} at #{time}"
      else
          count = (count*-1)
          session[:activities] << "Entered a casino and lost #{count} golds. Ouch... - #{date} at #{time}"
      end
      redirect_to :root
  end
end
