class AddUrlEncodeToShops < ActiveRecord::Migration
  def change
    add_column :shops, :url_encode, :string
  end
end
