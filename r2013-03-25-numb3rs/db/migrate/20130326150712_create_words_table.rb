class CreateWordsTable < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.text :words
      t.timestamps
    end
  end
end
