require_relative '../music_album'
require_relative '../label'
require 'json'

class AddMusicAlbum
  def add_music_album
    puts 'Enter the title'
    title = gets.capitalize.chomp

    puts 'Enter the publish date (YY-MM-DD):'
    publish_date = gets.chomp

    puts 'Enter the label color:'
    color = gets.capitalize.chomp

    puts 'Is the music album on Spotify? [y/n]:'
    on_spotify = gets.chomp.upcase
    spotify = false
    spotify = true if on_spotify == 'Y'

    album = MusicAlbum.new(publish_date, spotify)
    label = Label.new(title, color)

    album_obj = {
      publish_date: album.publish_date,
      on_spotify: album.on_spotify
    }

    label_obj = {
      id: label.id,
      title: label.title,
      color: label.color
    }

    music_albums(album_obj)
    add_label(label_obj)
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

  def add_label(label_obj)
    if File.exist?('./storage/label.json')

      if File.empty?('./storage/label.json')
        labels = [label_obj]
      else
        labels = JSON.parse(File.read(('./storage/label.json')))
        labels << label_obj
      end
    else
      File.write('./storage/label.json', '')
    end

    File.write('./storage/label.json', JSON.pretty_generate(labels))
  end
end
