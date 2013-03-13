class CreateUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.decimal :cash_balance, :default => 0
      t.decimal :stock_balance, :default => 0
      t.string :password_digest
      t.timestamps
    end
  end
end
