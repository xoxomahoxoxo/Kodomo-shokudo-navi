class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :place
      t.timestamps
    end
  end
end
