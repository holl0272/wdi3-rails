class RemoveWordsColumnFromDeclarationsTable < ActiveRecord::Migration
  def change
    remove_column :declarations, :words
  end
end
