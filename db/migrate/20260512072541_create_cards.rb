class CreateCards < ActiveRecord::Migration[8.1]
  def change
    create_table :cards do |t|
      t.references :board, null: false, foreign_key: true
      t.string :title
      t.text :description
      t.string :column_name
      t.integer :position
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
