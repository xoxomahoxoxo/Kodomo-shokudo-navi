class AddPlaceToShops < ActiveRecord::Migration
  def change
    add_column :shops, :place, :string
  end
end
