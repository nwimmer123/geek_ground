class SubscriptionsController < ApplicationController

  def new
  end

  def index
  end

  def create
    puts "HEEERRREE!!!!!"
    puts current_user
    redirect_to root_path
  end

end
