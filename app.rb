require_relative './data/all_music_albums'
require './data/add_music_album'

class App
  def start_app
    output = gets.chomp.to_i
    case output
    when 2 then AllMusicAlbums.new.all_music_albums
    when 10 then AddMusicAlbum.new.add_music_album
    when 13
      exit
    end
  end
end
