class HomeController < ApplicationController
  def index
    unless user_signed_in?
      redirect_to '/users/sign_in'
    end
  end
  
  def list
    @posts = Post.all
  end
  
  def reviews
    @reviews= Review.all
  end
end
