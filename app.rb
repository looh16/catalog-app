require './data/list_all_music_albums'
require './data/add_music_album'
require './data/add_movies'
require './data/list_movies'
require './data/add_book'
require './data/list_of_books'
require './data/add_game'
require './data/list_all_games'
require './data/list_genres'
require './data/list_all_authors'
require './data/list_all_labels'
require './data/list_sources'


# rubocop:disable  Metrics/CyclomaticComplexity

class App
  def start_app
    output = gets.chomp.to_i
    case output
    when 1 then ListOfBooks.new.list_of_books
    when 2 then AllMusicAlbums.new.all_music_albums
    when 3 then list_movies
    when 4 then ListAllGames.new.list_all_games
    when 5 then list_genres
    when 6 then Listlabels.new.list_all_labels
    when 7 then ListAuthors.new.list_all_authors
    when 8 then list_sources
    when 9 then AddBook.new.add_book
    when 10 then AddMusicAlbum.new.add_music_album
    when 11 then add_movie
    when 12 then AddGame.new.add_game
    when 13 then exit
    else
      puts 'Please enter a correct number'
    end
  end
end
# rubocop:enable Metrics/CyclomaticComplexity
