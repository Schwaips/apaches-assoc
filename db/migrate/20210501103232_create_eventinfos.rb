class CreateEventinfos < ActiveRecord::Migration[6.1]
  def change
    create_table :eventinfos do |t|
      t.references :event, null: false, foreign_key: true
      t.datetime :start_time
      t.datetime :end_time
      t.string :theater_name
      t.string :address
      t.integer :number_of_seat

      t.timestamps
    end
  end
end
