class AddMemberToBands < ActiveRecord::Migration
  def change
    add_column :bands, :member, :text, null: false
  end
end
