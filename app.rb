require './data/all_music_albums'
require './data/add_music_album'
require './data/add_movies'
require './data/list_movies'
require './data/add_book'
require './data/list_of_books'

class App
  def start_app
    output = gets.chomp.to_i
    case output
    when 1 then ListOfBooks.new.list_of_books
    when 2 then AllMusicAlbums.new.all_music_albums
    when 3 then list_movies
    when 9 then AddBook.new.add_book
    when 10 then AddMusicAlbum.new.add_music_album
    when 11 then add_movie
    when 13 then exit
    else
      puts 'Please enter a correct number'
    end
  end
end
