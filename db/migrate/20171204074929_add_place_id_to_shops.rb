class AddPlaceIdToShops < ActiveRecord::Migration
  def change
    add_column :shops, :place_id, :integer
  end
end
