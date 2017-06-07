class DojosController < ApplicationController
    def index
         @dojos = Dojo.all
         @count = Dojo.count
     end

     def new
        @dojo = Dojo.new()

     end

     def edit
          @dojo = Dojo.find(params[:id])
     end

     def create
         @dojo = Dojo.new(dojo_params)
         if @dojo.save
             redirect_to :root, notice: "You have successfully created a Dojo!"
         else
             flash[:errors] = @dojo.errors.full_messages
             redirect_to '/dojos/new'
         end

     end

     def update
         @dojo = Dojo.find(params[:id])
         @dojo.update(dojo_params)
         redirect_to '/'
     end

     def destroy
         @dojos = Dojo.all
         @dojo = Dojo.find(params[:id])
         @dojo.destroy
         redirect_to '/'

     end

     def show
         @dojo = Dojo.find(params[:id])
     end

     def all
         @student = Student.order(:lname)
     end

     def test
         @student1 = Student.find(30)
         @student2 = Student.find(31)
         @s1c= @student1.created_at
         @s1month = @s1c.strftime("%b")
         @s1day = @s1c.strftime("%d")
         @s1comp = "#{@s1month} #{@s1day}"
         @s2c= @student2.created_at
         @s2month = @s2c.strftime("%b")
         @s2day = @s2c.strftime("%d")
         @s2comp = "#{@s2month} #{@s2day}"
        #  <h3><%= @time.strftime("%b %d, %Y") %></h3>
		# 	<h3><%= @time.strftime("%I:%M %p") %></h3>
         if @s1comp == @s2comp
             @result = 'Equal'
        else
            @result = 'Not equal'
        end
     end

     private
       def dojo_params
         params.require(:dojo).permit(:branch, :street, :city, :state)
       end
end
