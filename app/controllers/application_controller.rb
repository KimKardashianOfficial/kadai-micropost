class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include SessionsHelper

  private

  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end

  def counts(user)
    p "count_microposts"
    @count_microposts = user.microposts.count
    p "count_followings"
    @count_followings = user.followings.count
    p "count_followers"
    @count_followers = user.followers.count
    p "count_favos"
    @count_favorites = user.favos.count
  end
end