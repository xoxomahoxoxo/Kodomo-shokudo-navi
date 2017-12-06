class AddPictureToShop < ActiveRecord::Migration
  def change
    add_column :shops, :picture, :string
  end
end
