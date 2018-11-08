class Post < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  belongs_to :user
  belongs_to :category
  has_many :likes
  has_many :liked_users, through: :likes, source: :user
  has_many :abouts
  has_many :related_hashtags, through: :abouts, source: :hashtag
  has_many :reviews
end
