class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :update, :destroy, :create]
  expose(:review)
  expose(:product)
  expose(:category)

  def edit
  end

  def create
    self.review = current_user.reviews.build(review_params)
    
    if review.save
      product.reviews << review
      redirect_to category_product_url(product.category, product), notice: 'Review was successfully created.'
    else
      render 'new'
    end
  end

  def destroy
    review.destroy
    redirect_to category_product_url(product.category, product), notice: 'Review was successfully destroyed.'
  end

  private
    def review_params
      params.require(:review).permit(:content, :rating)
    end
end
