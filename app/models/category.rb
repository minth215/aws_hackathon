class Category < ActiveRecord::Base
  has_many :interests
  has_many :interested_users, through: :interests, source: :user
  has_many :posts
end
