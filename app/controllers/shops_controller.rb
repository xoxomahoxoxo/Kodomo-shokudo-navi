class ShopsController < ApplicationController
  def index
    @place = Place.find(params[:place_id])
    @shops = Shop.where(place: params[:place_id])
  end
end
