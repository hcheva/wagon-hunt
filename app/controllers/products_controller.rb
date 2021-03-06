class ProductsController < ApplicationController
skip_before_action :authenticate_user!, only: [:index, :show]
before_action :find_product, only: [:show, :edit, :update, :destroy]

def index

    if params[:category]
    @products = Product.where(category: params[:category])
    else
     @products = Product.all.order(created_at: :desc)
  end

def upvotes_rank
  @products = Product.select("products.*, COUNT(upvotes.id) AS upvotes_count").joins("LEFT JOIN upvotes ON products.id = upvotes.product_id").group("products.id").order("upvotes_count DESC")
end

def products_by_day
  day = Date.today
  @products = Product.select("products.*, COUNT(upvotes.id) AS upvotes_count").joins(:upvotes).where('upvotes.created_at >= ?', day).where('upvotes.created_at < ?', day + 1.day).order("upvotes_count DESC").group("products.id")
end


end

def show
  index = params[:id]
end

def new
  @product = Product.new
end

def create
  @product = Product.new(product_params)
  @product.user = current_user
  if @product.save
  redirect_to products_path
    else
      render :new
    end
end

def edit
end

def update
  if @product.update(product_params)
      redirect_to products_path
    else
      render :edit
    end

end

def destroy
  @product.destroy
  redirect_to products_path
end

private

def product_params
  params.require(:product).permit(:name, :url, :tagline, :category, :photo)
end

def find_product
  @product = Product.friendly.find(params[:id])
end



end
