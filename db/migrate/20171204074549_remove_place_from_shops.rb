class RemovePlaceFromShops < ActiveRecord::Migration
  def change
    remove_column :shops, :place, :string
  end
end
