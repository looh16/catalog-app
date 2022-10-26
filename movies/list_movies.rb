require 'json'

def list_movies
    if File.exist?('./data/movie.json')
      movies = JSON.parse(File.read('./data/movie.json'))
      movies.each do |movie|
        p '------------------------------------------------------------------------------'
        p "Movie Genre: " + movie['genre'] + " is silent : " + movie['is_silent']
      end
    else
      []
    end
  end