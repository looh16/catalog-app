require 'json'

def list_genres
  if File.exist?('./storage/genre.json')
    genre_list = JSON.parse(File.read('./storage/genre.json'))

    genre_list.each do |genre|
      p ' ------------------------------------------------------------------------------ '
      p genre['name']
    end
  else
    []
  end
end
