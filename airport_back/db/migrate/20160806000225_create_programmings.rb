class CreateProgrammings < ActiveRecord::Migration
  def change
    create_table :programmings do |t|
      t.references :airplane, index: true, foreign_key: true
      t.references :track, index: true, foreign_key: true
      t.references :pilot, index: true, foreign_key: true
      t.date :date
      t.time :hour
      t.string :origin
      t.string :destination
      t.integer :duration

      t.timestamps null: false
    end
  end
end
