class CreateMountainsTable < ActiveRecord::Migration
  def change
    create_table :mountains do |t|
      t.string :name
      t.text :image
      t.float :height
      t.string :range
      t.string :parent
      t.integer :ascents
      t.timestamps
    end
  end
end
