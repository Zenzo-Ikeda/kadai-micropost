class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  
  
  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.be_like(micropost)
    flash[:succes] = 'micropostをお気に入りに追加しました。'
    redirect_to root_url
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.unlike(micropost)
    flash[:succes] = 'micropostをお気に入りから削除しました。'
    redirect_to root_url
  end
  
end
