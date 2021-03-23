class CreateActors < ActiveRecord::Migration[6.1]
  def change
    create_table :actors do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :role
      t.text :description

      t.timestamps
    end
  end
end
