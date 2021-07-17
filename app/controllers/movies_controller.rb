class MoviesController < ApplicationController
    def home
        @movies = Movie.all
    end
end
