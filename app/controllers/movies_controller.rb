class MoviesController < ApplicationController
  load_and_authorize_resource

  def index
    @movies = Movie.all
  end

  def show
  end

  def new
  end

  def create
    if @movie.save
      redirect_to @movie, notice: 'Movie was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @movie.update(movie_params)
      redirect_to @movie, notice: 'Movie was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @movie.destroy
    redirect_to movies_url, notice: 'Movie was successfully destroyed.'
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :genre)
  end
end
