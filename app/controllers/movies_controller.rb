class MoviesController < ApplicationController
  def create
    @movie = Movie.find_by(imdb_id: params[:imdb_id])
    if @movie
      @movie.update(views: @movie.views + 1)
    else
      @movie = Movie.create(imdb_id: params[:imdb_id], poster_path: params[:poster_path])
    end
  end

  def index
    # grab most recently created movies
  end
end
