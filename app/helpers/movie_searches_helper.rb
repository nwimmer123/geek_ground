module MovieSearchesHelper

  require "net/http"
  require "json"
  require "openssl"
  OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

  SECRET_KEY = Figaro.env.the_movie_db

  def movie_url(movie_name)
    "https://api.themoviedb.org/3/movie/?api_key=#{SECRET_KEY}&language=en-US&query=#{movie_name}&page=1&include_adult=true"
  end

  def fetch_movie_data(movie_name)
    uri = URI(book_url(movie_name))
    response = Net::HTTP.get(uri)  
  end

  def display_results(movie_name)
    @movie_data = fetch_movie_data(movie_name)
  end 
end
