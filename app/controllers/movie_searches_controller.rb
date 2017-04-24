class MovieSearchesController < ApplicationController

  include MovieSearchesHelper
  before_action :set_user, only: [:create]

    def index
      @movie_search = MovieSearch.all
    end

    def new
    end

    def create
      MovieSearch.delete_all
      movie_name = params[:movie_search][:title]
      @movie_search = MovieSearch.new(movie_search_params)
      @movie_search.data = display_results(movie_name)
      @movie_search.save

      redirect_to movie_searches_path
    end

    private

      def movie_search_params
        params.require(:movie_search).permit(:data)
      end

end
