class AddPriceAndPurchaseToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :price, :decimal
  end
end
