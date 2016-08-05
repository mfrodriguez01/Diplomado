class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :last_name
      t.string :identification
      t.string :telephone
      t.string :email
      t.string :user_name
      t.string :password_digest
      t.references :role, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
