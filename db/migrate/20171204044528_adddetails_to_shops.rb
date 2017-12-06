class AdddetailsToShops < ActiveRecord::Migration
  def change
    add_column :shops, :details, :string
  end
end
