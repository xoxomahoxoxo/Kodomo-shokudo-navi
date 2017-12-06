class AddshopInfoToShops < ActiveRecord::Migration
  def change
    add_column :shops, :shop_info, :string
  end
end
