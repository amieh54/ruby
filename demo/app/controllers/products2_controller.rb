class Products2Controller < ApplicationController
  def index
     @products = Product.all
  end
  def create
      @product = Product.create( name: params[:name], description: params[:description])
      redirect_to '/products2/index'
     

  end
  def new
  end
end
