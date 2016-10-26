class ChangeSideboardBoolean < ActiveRecord::Migration[5.0]
  def up
    remove_column :cards, :main?, :string
    add_column :cards, :main?, :boolean, default: true
  end

  def down
    remove_column :cards, :main?, :boolean
    add_column :cards, :main?, :string
  end
end
