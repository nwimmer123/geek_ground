class MoviesController < ApplicationController

  before_action :current_movie, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:create, :show, :update, :destroy]

  def index
    if params[:search]
      @movies = Movie.search(params[:search]).order("created_at DESC")
    else
      @movies = Movie.all.order(created_at: :desc)
    end
  end

  def new
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.save
    redirect_to root_path
  end

  def show

  end

  def edit
  end

  def update
    @movie.update_attributes(movie_params)
    redirect_to root_path
  end

  def destroy
    @reviews = Review.where(movie_id: @movie.id)
    @reviews.each do |review|
      review.destroy
    end
    @movie.destroy
    redirect_to root_path
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :genre, :image, :cast, :director, :premier, :language, :summary)
  end

  def current_movie
    @movie = Movie.find_by_id(params[:id])
  end
end
