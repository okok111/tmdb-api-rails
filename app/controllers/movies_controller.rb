class MoviesController < ApplicationController
  def search
    if params[:looking_for]
      movie_title = params[:looking_for]
      url = URI.encode('https://api.themoviedb.org/3/search/movie?api_key=150363785ff664359067f5e9ccbe5883&query=' + movie_title)
    else
      url = 'https://api.themoviedb.org/3/movie/popular?api_key=150363785ff664359067f5e9ccbe5883'
    end

    @movies = JSON.parse(Net::HTTP.get(URI.parse(url)))
  end

  def show
  end


end
