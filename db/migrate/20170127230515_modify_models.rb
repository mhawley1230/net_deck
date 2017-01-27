class ModifyModels < ActiveRecord::Migration[5.0]
  def up
    remove_column :tournaments, :location
    remove_column :tournaments, :date
    add_column :tournaments, :description, :string, null: false
  end

  def down
    add_column :tournaments, :location, :string, null: false
    add_column :tournaments, :date, :string, null: false
    remove_column :tournaments, :description
  end
end
