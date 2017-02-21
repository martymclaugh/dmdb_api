class MoviesController < ApplicationController
  def create
    @movie = Movie.find_by(imdbID: params[:movie][:imdbID])
    if @movie
      @movie.update(views: @movie.views + 1)
    else
      @movie = Movie.create(movie_params)
    end
  end

  def index
    # grab most recently created movies
  end

  private

  def movie_params
    params.require(:movie).permit(:Actors, :Awards, :BoxOffice, :Country, :DVD, :Director, :Genre, :Language, :Metascore, :Plot, :Poster, :Production, :Rated, :Released, :Response, :Runtime, :Title, :Type, :Website, :Writer, :Year, :imdbID, :imdbRating, :imdbVotes, :tomatoConsensus, :tomatoFresh, :tomatoImage, :tomatoMeter, :tomatoRating, :tomatoReviews, :tomatoRotten, :tomatoURL, :tomatoUserMeter, :tomatoUserRating, :tomatoUserReviews)
  end
end
