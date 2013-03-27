class AddIndexColumnToWordsTable < ActiveRecord::Migration
  def change
    add_column :words, :index, :integer
  end
end