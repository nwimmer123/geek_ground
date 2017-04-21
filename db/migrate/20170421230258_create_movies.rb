class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :cast
      t.string :image
      t.string :genre
      t.string :director
      t.string :premier
      t.string :language
      t.string :summary

      t.timestamps null: false
    end
  end
end
