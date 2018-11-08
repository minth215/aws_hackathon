class MatchController < ApplicationController
  def m_request
    current_user.friend_request(User.find(params[:user_id]))
    redirect_to :back
  end
  def m_accept
    current_user.accept_request(User.find(params[:user_id]))
    redirect_to :back
  end
  def m_decline
    current_user.decline_request(User.find(params[:user_id]))
    redirect_to :back
  end

end
