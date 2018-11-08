class PostController < ApplicationController
  require 'carrierwave/orm/activerecord'
  before_action :authenticate_user!, only: [:show, :new, :create, :edit, :update, :destroy]
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  
  def new
    @post = Post.new
    @categories = Category.all
  end
  
  def create
    post = Post.create(post_params)
    post.image = params[:image]
    post.save!

    redirect_to '/'
  end
  
  def show
    @review = Review.new
  end
  
  def edit
  end
  
  def update
    Post.update(post_params)
    redirect_to root_path
  end
  
  def destroy
    @post.destroy
    redirect_to root_path
  end
  
  def like_toggle
    like = Like.find_by(user_id: current_user.id, post_id: params[:id]) 
    
    if like.nil?
      Like.create(user_id: current_user.id, post_id: params[:id])
    else
      like.destroy
    end
    redirect_to :back
  end
  private
  
  def post_params
    params.require(:post).permit(:title, :content, :image, :category_id, :user_id)
    
  end
  
  def set_post
    @post = Post.find(params[:id])
  end
  
end
