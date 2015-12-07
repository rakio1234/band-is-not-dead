class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :name, null: false
      t.string :image
      t.text :description, null: false
      t.timestamps null: false
    end
  end
end
