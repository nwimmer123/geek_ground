class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :title
      t.string :genre
      t.string :image
      t.string :premier
      t.string :summary

      t.timestamps null: false
    end
  end
end
