class ReviewsController < ApplicationController

  def new
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new
  end

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)
    if @review.save
      flash[:notice] = "Review successfully created!"
      redirect_to product_path(@review.product)
    else
      render :new
    end
  end

  def edit
   @review = Review.find(params[:id])
   @product = @review.product
 end

 def update
   @review = Review.find(params[:id])
   if @review.update(review_params)
     flash[:notice] = "Review successfully updated!"
     redirect_to product_path(@review.product)
   else
     render :edit
   end
 end

 def destroy
   @review = Review.find(params[:id])
   if @review.destroy
     flash[:notice] = "Review successfully removed!"
    redirect_to product_path(@review.product)
   end
 end

  private
  def review_params
    params.require(:review).permit(:author, :content_body, :rating)
  end
end
