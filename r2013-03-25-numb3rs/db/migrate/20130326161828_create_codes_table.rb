class CreateCodesTable < ActiveRecord::Migration
  def change
    create_table :codes do |t|
      t.string :hex
      t.string :symbol
      t.integer :word_id
      t.timestamps
    end
  end
end

