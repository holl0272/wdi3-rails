class AddDeclatationIdColumnToWordsTable < ActiveRecord::Migration
  def change
    add_column :words, :declaration_id, :integer
  end
end