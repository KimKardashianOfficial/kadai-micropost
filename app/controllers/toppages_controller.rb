class ToppagesController < ApplicationController
  def index
    if logged_in?
      @user = current_user
      p "tweet"
      @micropost = current_user.microposts.build  # form_for 用
      p @micropost
      p "tweet!!"
      #@tweet = current_user.microposts.find_by(id: params[:id])
      @microposts = current_user.microposts.order('created_at DESC').page(params[:page])
      #@tweet = user.microposts
      #p @tweet
    end
  end
end