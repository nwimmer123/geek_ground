class BookSearchesController < ApplicationController

  include BookSearchesHelper
  before_action :set_user, only: [:create]

    def index
      @book_search = BookSearch.all
    end

    def new
    end

    def create
      BookSearch.delete_all
      book_name = params[:search][:title]
      @book_search = BookSearch.new(search_params)
      @book_search.data = display_results(book_name)
      @book_search.save

      redirect_to book_search_path
    end

    private

      def search_params
        params.require(:search).permit(:data)
      end


end
