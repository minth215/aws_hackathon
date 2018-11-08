class Hashtag < ActiveRecord::Base
  has_many :abouts
  has_many :related_posts, through: :abouts, source: :post
end
