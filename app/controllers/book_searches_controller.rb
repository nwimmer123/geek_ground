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
      book_name = params[:book_search][:title]
      @book_search = BookSearch.new(book_search_params)
      @book_search.data = display_results(book_name)
      @book_search.save

      redirect_to book_searches_path
    end

    private

      def book_search_params
        params.require(:book_search).permit(:data)
      end


end
