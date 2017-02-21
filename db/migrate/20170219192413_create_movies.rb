class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.integer :views, :null => false, :default => 1
      t.string :Actors
      t.string :Awards
      t.string :BoxOffice
      t.string :Country
      t.string :DVD
      t.string :Director
      t.string :Genre
      t.string :Language
      t.string :Metascore
      t.text :Plot
      t.string :Poster
      t.string :Production
      t.string :Rated
      t.string :Released
      t.string :Response
      t.string :Runtime
      t.string :Title
      t.string :Type
      t.string :Website
      t.text :Writer
      t.string :Year
      t.string :imdbID
      t.string :imdbRating
      t.string :imdbVotes
      t.text :tomatoConsensus
      t.string :tomatoFresh
      t.string :tomatoImage
      t.string :tomatoMeter
      t.string :tomatoRating
      t.string :tomatoReviews
      t.string :tomatoRotten
      t.string :tomatoURL
      t.string :tomatoUserMeter
      t.string :tomatoUserRating
      t.string :tomatoUserReviews
      t.timestamps
    end
  end
end
