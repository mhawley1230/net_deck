class AddValidationToJoinTable < ActiveRecord::Migration[5.0]
  def up
    change_column :comments, :deck_id, :integer, null: false
  end

  def down
    change_column :comments, :deck_id, :integer
  end
end
