class CreateTokens < ActiveRecord::Migration
  def change
    create_table :tokens do |t|
      t.string :token
      t.string :name
      t.integer :number_of_request, default: 0

      t.timestamps null: false
    end
  end
end
