class AddIngredientsTable < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :measurment
      t.decimal :cost
      t.text :image
      t.timestamps
    end
  end
end