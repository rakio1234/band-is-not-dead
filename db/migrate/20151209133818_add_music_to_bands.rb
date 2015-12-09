class AddMusicToBands < ActiveRecord::Migration
  def change
    add_column :bands, :music, :string
  end
end
