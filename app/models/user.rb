class User < ActiveRecord::Base
  has_friendship
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :interests
  has_many :interested_categories, through: :interests, source: :category
  
  has_many :posts
  has_many :likes
  has_many :liked_posts, through: :likes, source: :post
  has_many :reviews
  
  def is_like?(post)
    Like.find_by(user_id: self.id, post_id: post.id).present?
  end
end
