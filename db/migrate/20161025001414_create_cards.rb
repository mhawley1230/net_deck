class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.string :name, null: false
      t.string :colors, null: false
      t.integer :number_played, null: false
      t.string :img_url, null: false
      t.belongs_to :deck, null: false
      t.string :main?, null: false

      t.timestamps
    end
  end
end
