class CreateHistorySessions < ActiveRecord::Migration
  def change
    create_table :history_sessions do |t|
      t.date :date
      t.time :hour
      t.boolean :state, default: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
