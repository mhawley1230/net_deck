class RemoveColorsFromDecks < ActiveRecord::Migration[5.0]
  def up
    remove_column :decks, :colors
    remove_column :decks, :archetype
  end

  def down
    add_column :decks, :colors, :string, null: false
    add_column :decks, :archetype, :string, null: false
  end
end
