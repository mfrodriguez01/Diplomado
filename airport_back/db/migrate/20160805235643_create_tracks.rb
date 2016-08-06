class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :code
      t.decimal :long
      t.boolean :state, default: true

      t.timestamps null: false
    end
  end
end
