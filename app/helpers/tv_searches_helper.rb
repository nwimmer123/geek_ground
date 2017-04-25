module TvSearchesHelper

  require "net/http"
  require "json"
  require "openssl"
  OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

  SECRET_KEY = Figaro.env.the_movie_db

  def tv_url(tv_name)
    "https://api.themoviedb.org/3/search/tv?api_key=#{SECRET_KEY}&language=en-US&query=#{tv_name}&page=1"
  end

  def fetch_tv_data(tv_name)
    uri = URI(tv_url(tv_name))
    response = Net::HTTP.get(uri)  
  end

  def display_results(tv_name)
    @tv_data = fetch_tv_data(tv_name)
  end 

end
