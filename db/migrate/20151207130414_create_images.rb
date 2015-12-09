class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.belongs_to :band, null: false, index: true
      t.string :attachment, null: false
      t.timestamps null: false
    end
  end
end
