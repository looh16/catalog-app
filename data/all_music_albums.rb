class AllMusicAlbums
  def all_music_albums
    if File.exist?('./storage/music_album.json')

      if File.empty?('./storage/music_album.json')
        puts 'There is no music album existing yet, please create one'
      else
        albums = JSON.parse(File.read(('./storage/music_album.json')))
        puts 'Published dates'
        albums.each do |album|
          puts "#{album['publish_date']} , is the album on spotify: #{album['on_spotify']}"
        end
      end
    else
      puts 'There is no music album existing yet, please create one'
    end
  end
end
