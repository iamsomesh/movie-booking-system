class ShowtimesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  load_and_authorize_resource

  def index
    @showtimes = @showtimes.includes(:movie).where('start_time > ?', Time.now).order(:start_time)
  end

  def new
    @movies = Movie.all
  end

  def create
    if @showtime.save
      redirect_to showtimes_path, notice: 'Showtime was successfully created.'
    else
      @movies = Movie.all
      render :new
    end
  end

  def edit
    @movies = Movie.all
  end

  def update
    if @showtime.update(showtime_params)
      redirect_to showtimes_path, notice: 'Showtime was successfully updated.'
    else
      @movies = Movie.all
      render :edit
    end
  end

  def destroy
    @showtime.destroy
    redirect_to showtimes_url, notice: 'Showtime was successfully destroyed.'
  end

  private

  def showtime_params
    params.require(:showtime).permit(:movie_id, :start_time, :seats_available)
  end
end
