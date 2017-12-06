class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :shop_name
      t.integer :user_id
      t.timestamps
    end
  end
end
