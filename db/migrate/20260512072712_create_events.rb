class CreateEvents < ActiveRecord::Migration[8.1]
  def change
    create_table :events do |t|
      t.references :board, null: false, foreign_key: true
      t.references :card, null: false, foreign_key: true
      t.string :event_type
      t.json :payload

      t.timestamps
    end
  end
end
