class ReviewsController < ApplicationController

  def top
  end

  def index
    @shops = Shop.all
    @shop = Shop.find(params[:shop_id])
    @reviews = @shop.reviews
    @like = @shop.likes.find_by(user_id: current_user.id)

  end

  def new
    @shop = Shop.find(params[:shop_id])
  end

  def create
    Review.create(review_params)
  end

  def destroy
      review = Review.find(params[:id])
      review.destroy if review.user_id == current_user.id
  end

  def edit
      @shop = Shop.find(params[:shop_id])
      @review = Review.find(params[:id])
  end

  def update
      review = Review.find(params[:id])
      if review.user_id == current_user.id
        review.update(review_params)
      end
  end

  def show
    @review = Review.find(params[:id])
  end





  private
  def review_params
    params.permit(:content_text, :shop_id).merge(user_id: current_user.id)
  end

  def move_to_index
      redirect_to action: :index unless user_signed_in?
    end

end
