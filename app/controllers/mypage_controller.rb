class MypageController < ApplicationController
  def mypost
    @posts = current_user.posts
  end
  
  def mylike
    @posts = current_user.liked_posts
  end
  
  def manage_users #나에게 온 요청, 내가 보낸 요청
    @requested_friends = current_user.requested_friends
    @pending_friends = current_user.pending_friends
  end
  
  def matched_users #매칭된 유저
    @friends = current_user.friends
  end
end
