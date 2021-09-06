class MoviesController < ApplicationController
  require 'themoviedb-api'
  Tmdb::Api.key("150363785ff664359067f5e9ccbe5883")
  Tmdb::Api.language("ja")

  def search
  end

  def show
  end


end
