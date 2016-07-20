class ProductsController < ApplicationController

  def index

    @products = Product.all

  end

def show
  index = params[:id]
  @product = Product.find(params[:id])
end

end
