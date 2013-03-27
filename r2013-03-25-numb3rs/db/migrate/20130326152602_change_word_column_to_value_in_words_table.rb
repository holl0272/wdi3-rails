class ChangeWordColumnToValueInWordsTable < ActiveRecord::Migration
  def change
    add_column :words, :value, :string
    remove_column :words, :words
  end
end
