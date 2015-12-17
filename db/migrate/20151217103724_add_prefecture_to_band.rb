class AddPrefectureToBand < ActiveRecord::Migration
  def change
    add_column :bands, :prefecture, :string
  end
end
