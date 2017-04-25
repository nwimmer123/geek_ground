class ShowsController < ApplicationController

  before_action :current_show, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:create, :show, :update, :destroy]

  def index
    if params[:search]
      @shows = Show.search(params[:search]).order("created_at DESC")
    else
      @shows = Show.all.order(created_at: :desc)
    end
  end

  def new
  end

  def create
    @show = Show.new(show_params)
    @show.save
    redirect_to root_path
  end

  def show
  end

  def edit
  end

  def update
    @show.update_attributes(show_params)
    redirect_to root_path
  end

  def destroy
    @reviews = Review.where(show_id: @show.id)
    @reviews.each do |review|
      review.destroy
    end
    @show.destroy
    redirect_to root_path
  end

  private

  def show_params
    params.require(:show).permit(:title, :genre, :image, :premier, :summary)
  end

  def current_show
    @show = Show.find_by_id(params[:id])
  end
  
end
