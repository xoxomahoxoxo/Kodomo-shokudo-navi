class AddShopIdToLikes < ActiveRecord::Migration
  def change
    add_column :likes, :shop_id, :integer, foreign_key: true
  end
end
