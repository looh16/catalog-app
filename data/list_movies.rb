require 'json'

def list_movies
    if File.exist?('./storage/movie.json')
      movies_list = JSON.parse(File.read('./storage/movie.json'))
      
      movies_list.each do |m|
        p '------------------------------------------------------------------------------'
        p m
      #  p "Movie Genre: " + movie['genre'] + " is silent : " + movie['is_silent']
      end
    else
      []
    end
  end