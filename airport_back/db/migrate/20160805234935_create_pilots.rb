class CreatePilots < ActiveRecord::Migration
  def change
    create_table :pilots do |t|
      t.string :name
      t.string :last_name
      t.string :identification
      t.string :telephone
      t.string :email
      t.integer :experience

      t.timestamps null: false
    end
  end
end
