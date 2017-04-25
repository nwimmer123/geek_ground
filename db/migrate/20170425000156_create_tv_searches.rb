class CreateTvSearches < ActiveRecord::Migration
  def change
    create_table :tv_searches do |t|
      t.json :data

      t.timestamps null: false
    end
  end
end
