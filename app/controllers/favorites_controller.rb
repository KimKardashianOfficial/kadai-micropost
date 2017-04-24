class FavoritesController < ApplicationController
  before_action :require_user_logged_in

  def create
    p "sdafva"
    p params[:id]
    p "kanye"
    User.all.each do |user|
      p user.microposts
      if user.microposts.find_by(id: params[:id]) != nil then
        @micro = user.microposts.find_by(id: params[:id])
      end
    end
    p "omari"
    p @miro
    current_user.like(@micro)
    p current_user
    p "west"
    flash[:success] = 'お気に入りに登録しました'
    #redirect_to root_url
    redirect_back(fallback_location: root_path)
  end

  def destroy
    p "micorod"
    p params[:id]
    p "micoroeeeed"
    User.all.each do |user|
      p user.microposts
      if user.microposts.find_by(id: params[:fav_id]) != nil then
        @micro = user.microposts.find_by(id: params[:fav_id])
      end
    end
    p "micor"
    p @micro
    p "mic"
    current_user.unlike(@micro)
    flash[:success] = 'お気に入りから外しました。'
    #redirect_to root_url
    
    redirect_back(fallback_location: root_path)
  end
end
