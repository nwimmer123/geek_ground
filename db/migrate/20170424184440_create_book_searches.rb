class CreateBookSearches < ActiveRecord::Migration
  def change
    create_table :book_searches do |t|
      t.json :data

      t.timestamps null: false
    end
  end
end
