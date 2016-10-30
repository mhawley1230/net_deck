class ChangeToTournamnetsId < ActiveRecord::Migration[5.0]
  def up
    remove_column :comments, :deck_id
    add_column :comments, :tournament_id, :integer, null: false
  end

  def down
    remove_column :comments, :tournament_id
    add_column :comments, :deck_id, :integer, null: false
  end
end
