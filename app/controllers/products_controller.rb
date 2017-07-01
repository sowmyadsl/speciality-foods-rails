class ProductsController < ApplicationController

  def index
    if params[:filter] == nil
      @products = Product.alphabetical
    else
      @products = Product.send(params[:filter])
      if Product.send(params[:filter]) == []
        flash[:notice] = "No results returned.  Choose another filter!"
      end

    end
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
    @product= Product.find(params[:id])
  end

  def update
    @product= Product.find(params[:id])
    if @product.update(product_params)
      flash[:notice] = "Product successfully updated!"
      redirect_to products_path
    else
      render :edit
    end
  end

  def destroy
   @product = Product.find(params[:id])
   @product.destroy
   flash[:notice] = "Product successfully removed!"
   redirect_to products_path
  end

  private
  def product_params
    params.require(:product).permit(:name, :cost, :image, :country_of_origin)
  end
end
