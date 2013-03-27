class CreateDeclarationsTable < ActiveRecord::Migration
  def change
    create_table :declarations do |t|
      t.text :url
      t.text :words
      t.timestamps
    end
  end
end