require_relative './data/add_movies'
require_relative './data/list_movies'

class App
  def start_app
    output = gets.chomp.to_i
    case output
    when 3
      list_movies
    when 11
      add_movie
    when 13
      exit
    end
  end
end
