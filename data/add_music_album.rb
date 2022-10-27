require_relative '../music_album'
require 'json'

class AddMusicAlbum
  def add_music_album
    puts 'Enter the publish date:'
    publish_date = gets.chomp

    puts 'Is the music album on Spotify? [Y/N]'
    on_spotify = gets.chomp.upcase
    spotify = false
    spotify = true if on_spotify == 'Y'
    album = MusicAlbum.new(publish_date, spotify)

    album_obj = {
      publish_date: album.publish_date,
      on_spotify: album.on_spotify
    }
    music_albums(album_obj)
  end

  def music_albums(album_obj)
    if File.exist?('./storage/music_album.json')
      if File.empty?('./storage/music_album.json')
        music_obj = [album_obj]
      else
        music_obj = JSON.parse(File.read(('./storage/music_album.json')))
        music_obj << album_obj
      end
    else
      File.write('./storage/music_album.json', '')
    end

    File.write('./storage/music_album.json', JSON.pretty_generate(music_obj))
  end
end
