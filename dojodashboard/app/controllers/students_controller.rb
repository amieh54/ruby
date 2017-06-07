class StudentsController < ApplicationController
  def index
      @dojo = Dojo.find(params[:dojo_id])
      @students = @dojo.students.all
  end

  def othernew
      @dojos = Dojo.all
      @dojo = Dojo.find(params[:dojo_id])

  end

  def edit
      @dojos = Dojo.all
      @dojo = Dojo.find(params[:dojo_id])
      @student = Student.find(params[:id])
  end

  def update
      @student = Student.find(params[:id])
      @student.update(fname:params[:fname], lname:params[:lname], email:params[:email], dojo_id:params[:dojo_id])
      redirect_to "/dojos/#{@student.dojo_id}/students"
  end

  def create
    @dojo = Dojo.find(params[:dojo_id])
    @student = Student.new(fname:params[:fname],lname:params[:lname], email:params[:email], dojo_id:params[:dojo_id])

    if @student.save

        redirect_to "/dojos/#{@student.dojo_id}/students", notice: "You have successfully created a student!"
    else
        flash['errors'] = @student.errors.full_messages
        redirect_to "/dojos/#{@dojo.id}/students/new"
    end
    # else
    #   flash[:errors] = @student.errors.full_messages
    #   redirect_to "dojos/#{@student.dojo.id}/students"
    # end
  end

  def new
  end

  def destroy
      @student = Student.find(params[:id])
      @student.delete
      redirect_to "/dojos/#{@student.dojo_id}/students"
  end

 #  @student1 = Student.find(30)
 #  @student2 = Student.find(31)
 #  @s1c= @student1.created_at
 #  @s1month = @s1c.strftime("%b")
 #  @s1day = @s1c.strftime("%d")
 #  @s1comp = "#{@s1month} #{@s1day}"
 #  @s2c= @student2.created_at
 #  @s2month = @s2c.strftime("%b")
 #  @s2day = @s2c.strftime("%d")
 #  @s2comp = "#{@s2month} #{@s2day}"
 # #  <h3><%= @time.strftime("%b %d, %Y") %></h3>
 # # 	<h3><%= @time.strftime("%I:%M %p") %></h3>
 #  if @s1comp == @s2comp
 #      @result = 'Equal'
 # else
 #     @result = 'Not equal'
 # end

  def show
      @student = Student.find(params[:id])

      dojo= Dojo.find(params[:dojo_id])
    # @cohort = dojo.students.where.not(id:params[:id])

      @cohort = dojo.students.where(:created_at(@student.created_at)).where.not(id:params[:id])
      @dojo = dojo
  end

end
