class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :title
      t.string :duration
      t.references :actor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
