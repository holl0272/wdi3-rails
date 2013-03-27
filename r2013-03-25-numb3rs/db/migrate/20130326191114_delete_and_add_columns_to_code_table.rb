class DeleteAndAddColumnsToCodeTable < ActiveRecord::Migration
  def change
    add_column :codes, :url, :string
    remove_column :codes, :hex
    remove_column :codes, :symbol
    remove_column :codes, :word_id
  end
end
