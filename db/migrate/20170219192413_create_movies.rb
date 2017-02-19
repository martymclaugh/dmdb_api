class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :imdb_id
      t.string :poster_path
      t.integer :views, :null => false, :default => 1
      t.timestamps
    end
  end
end
