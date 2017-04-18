class FavoritesController < ApplicationController
  def create
    micropost = Micropost.find(params[:post_id])
    current_user.fav(micropost)
    flash[:success] = 'Micropostをお気に入りに登録しました。'
    redirect_to :back
  end

  def destroy
    micropost = Micropost.find(params[:post_id])
    current_user.unfav(micropost)
    flash[:success] = 'Micropostをお気に入りから解除しました。'
    redirect_to :back
  end
end
