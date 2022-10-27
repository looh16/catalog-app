require './item'
require './movie'
require './genre'
require 'date'
require 'json'

def add_movie
  p 'Is the movie silent? [y/n]:'
  silent_option = gets.chomp.upcase
  case silent_option
  when 'y', 'Y'
    silent_option = true
  when 'n', 'N'
    silent_option = false
  else
    p "Error: The value (#{silent_option}) is invalide. Type [y/n]:"
    return
  end

  p 'Type Movie genre name:'
  genre_name = gets.chomp.upcase
  new_genre = Genre.new(genre_name)

  p 'Type publish date in format (YY-MM-DD):'
  publish_date = gets.chomp

  new_movie = Movie.new(silent_option, publish_date)
  new_movie.add_genre(new_genre)

  add_genre_in_json(new_genre)
  add_movie_in_json(new_movie)

  p 'Movie Created Successiful'
end

def add_movie_in_json(movie)
  obj = {
    genre: movie.genre.name,
    publish_year: movie.publish_date,
    is_silent: bool_to_word(movie.silent)
  }

  File.exist?('./storage/movie.json') unless File.exist?('./storage/movie.json')
  file = File.open('./storage/movie.json')

  if file.size.zero?
    mov = [obj]
  else
    mov = JSON.parse(File.read('./storage/movie.json'))
    mov << obj
  end

  file.close

  File.write('./storage/movie.json', JSON.pretty_generate(mov))
end

def add_genre_in_json(genre)
  obj = {
    name: genre.name
  }

  File.exist?('./storage/genre.json') unless File.exist?('./storage/genre.json')
  file = File.open('./storage/genre.json')

  if file.size.zero?
    ger = [obj]
  else
    ger = JSON.parse(File.read('./storage/genre.json'))
    ger << obj
  end

  file.close

  File.write('./storage/genre.json', JSON.pretty_generate(ger))
end

def bool_to_word(bool)
  if bool
    'Yes'
  else
    'No'
  end
end
