require './item'
require './movie'
require './genre'
require 'date'
require 'json'

@movies = []
@genre = []

def add_movie
  p 'Is the movie silent? [Y/N]'
  silent_option = gets.chomp.upcase
  case silent_option
  when 'y', 'Y'
    silent_option = true
  when 'n', 'N'
    silent_option = false
  else
    p "Error: The value (#{silent_option}) is invalide. Type Y or N"
    return
  end

  p 'Type Movie genre name'
  genre_name = gets.chomp.upcase
  genre = Genre.new(genre_name)

  p 'Type publish date in format (YYYY-MM-DD)'
  publish_date = Date.parse(gets.chomp.upcase)
  
  new_movie = Movie.new(silent_option, publish_date)
  new_genre = genre.add_item(new_movie)

  add_movie_in_json(new_movie, new_genre)
  p 'Movie Created Successiful'

end

def add_movie_in_json(movie, genre)

  movies = []
  obj = {
    genre: genre.name,
    publish_date: movie.publish_date,
    is_silent: bool_to_word(movie.silent)
  }

  movies.push(obj)

  if File.exist?('./data/movie.json')
    file = File.open('./data/movie.json')
    File.write('./data/movie.json', JSON.pretty_generate(movies))
  end
end


def bool_to_word(bool)
    if bool
      "Yes"
    else
      "No"
    end
end