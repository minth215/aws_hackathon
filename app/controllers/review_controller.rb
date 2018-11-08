class ReviewController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_review, only: [:edit, :update, :destroy]
  
  def new
    @review = Review.new
  end
  
  def create
    review = Review.create(review_params)
    redirect_to :back
  end
  
  def edit
  end
  
  def update
    Review.update(review_params)
    redirect_to root_path
  end
  
  def destroy
    @review.destroy
    redirect_to root_path  
  end
  
  
  private
  
  def review_params
    params.require(:review).permit(:content, :user_id, :post_id)
  end
  
  def set_review
    @review = Review.find(params[:review_id])
  end
end
