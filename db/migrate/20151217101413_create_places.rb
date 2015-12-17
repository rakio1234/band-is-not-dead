class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.integer :prefecture_code, null: false
      t.timestamps null: false
    end
  end
end
