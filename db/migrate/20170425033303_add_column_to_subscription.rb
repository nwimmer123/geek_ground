class AddColumnToSubscription < ActiveRecord::Migration
  def change
    add_column :subscriptions, :user_id, :integer
    add_column :subscriptions, :book_id, :integer
    add_column :subscriptions, :movie_id, :integer
    add_column :subscriptions, :show_id, :integer
  end
end
