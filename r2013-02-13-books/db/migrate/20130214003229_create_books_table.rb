class CreateBooksTable < ActiveRecord::Migration
  def change
      create_table :books do |t|
      t.string :title
      t.date :release
      t.text :description
      t.string :isbn
      t.text :image
      t.timestamps
    end
  end
end
