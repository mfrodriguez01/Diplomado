class AddNombredeMigrationToTokens < ActiveRecord::Migration
  def change
    add_column :tokens, :state, :boolean
  end
end
