class ProductsController < ApplicationController

  def index
    @products = Product.all
    render :index
  end

  def show
    @product = Product.find(params[:id])
  end
  
  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Product successfully added!"
      redirect_to products_path
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @product.update(product_params)
      flash[:notice] = "Post successfully updated!"
      redirect_to products_path
    else
      render :edit
    end
  end

  def destroy
   @product.destroy
   flash[:notice] = "Post successfully removed!"
   redirect_to products_path
  end

  private
  # callbacks
 def set_product
   @product = Product.find(params[:id])
 end

  def product_params
    params.require(:product).permit(:name, :cost, :image, :country_of_origin)
  end
end
