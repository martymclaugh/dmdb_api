class MoviesController < ApplicationController
  def create
    @movie = Movie.find_by(imdbID: params[:movie][:imdbID])
    # either update movie views or create movie object
    @movie ? @movie.update(views: @movie.views + 1) : @movie = Movie.create(movie_params)
  end

  def index
    @recently_viewed = Movie.order(updated_at: :desc).limit(20)
    # grab most recently created movies
    render json: @recently_viewed
  end

  private

  def movie_params
    params.require(:movie).permit(:Actors, :Awards, :BoxOffice, :Country, :DVD, :Director, :Genre, :Language, :Metascore, :Plot, :Poster, :Production, :Rated, :Released, :Response, :Runtime, :Title, :Type, :Website, :Writer, :Year, :imdbID, :imdbRating, :imdbVotes, :tomatoConsensus, :tomatoFresh, :tomatoImage, :tomatoMeter, :tomatoRating, :tomatoReviews, :tomatoRotten, :tomatoURL, :tomatoUserMeter, :tomatoUserRating, :tomatoUserReviews)
  end
end
