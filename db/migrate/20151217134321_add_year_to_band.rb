class AddYearToBand < ActiveRecord::Migration
  def change
    add_column :bands, :start_year, :integer
    add_column :bands, :end_year, :integer
  end
end
