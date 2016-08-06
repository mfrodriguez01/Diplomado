class CreateAirplanes < ActiveRecord::Migration
  def change
    create_table :airplanes do |t|
      t.string :number
      t.string :model
      t.integer :capacity
      t.integer :size
      t.boolean :state, default: true

      t.timestamps null: false
    end
  end
end
