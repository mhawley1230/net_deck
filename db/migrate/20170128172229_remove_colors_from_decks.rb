class RemoveColorsFromDecks < ActiveRecord::Migration[5.0]
  def up
    remove_column :decks, :colors
  end

  def down
    add_column :decks, :colors, :string, null: false
  end
end
