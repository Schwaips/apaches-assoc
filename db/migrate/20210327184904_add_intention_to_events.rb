class AddIntentionToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :intention_note, :text
  end
end
