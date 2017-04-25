class TvSearchesController < ApplicationController

  include TvSearchesHelper
  before_action :set_user, only: [:create]

    def index
      @tv_search = TvSearch.all
    end

    def new
    end

    def create
      TvSearch.delete_all
      tv_name = params[:tv_search][:title]
      @tv_search = TvSearch.new(tv_search_params)
      @tv_search.data = display_results(tv_name)
      @tv_search.save

      redirect_to tv_searches_path
    end

    private

      def tv_search_params
        params.require(:tv_search).permit(:data)
      end

end
