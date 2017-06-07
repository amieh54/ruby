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

  def delete
      dojo = Dojo.find(params[:id])
      dojo.delete
      redirect_to '/'

  end

  def show
      @dojo = Dojo.find(params[:id])
  end

  private
    def dojo_params
      params.require(:dojo).permit(:brach, :street, :city, :state)
    end
end
