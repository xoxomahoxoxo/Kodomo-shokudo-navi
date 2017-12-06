class AddMenuToShops < ActiveRecord::Migration
  def change
    add_column :shops, :Menu, :string
  end
end
