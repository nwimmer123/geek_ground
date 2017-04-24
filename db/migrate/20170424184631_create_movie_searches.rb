class CreateMovieSearches < ActiveRecord::Migration
  def change
    create_table :movie_searches do |t|
      t.json :data

      t.timestamps null: false
    end
  end
end
