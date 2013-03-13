class AddSubscriberIdColumnToUsersTable < ActiveRecord::Migration
  def change
    add_column :users, :subscriber_id, :integer
  end
end
