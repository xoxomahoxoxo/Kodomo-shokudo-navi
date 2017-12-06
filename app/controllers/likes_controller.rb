class LikesController < ApplicationController

  def create
    @like = Like.create(user_id: current_user.id, shop_id: params[:shop_id])
    @likes = Like.where(shop_id: params[:shop_id])
    @shops = Shop.all
  end


  def destroy
    like = Like.find_by(user_id: current_user.id, shop_id: params[:shop_id])
    like.destroy
    @likes = Like.where(shop_id: params[:shop_id])
    @shops = Shop.all
  end

end
