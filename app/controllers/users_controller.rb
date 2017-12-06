class UsersController < ApplicationController
  def show
      @nickname = current_user.nickname
      @reviews =current_user.reviews.order("created_at DESC")
      @shops = current_user.shops

  end
end

 def new
 end
