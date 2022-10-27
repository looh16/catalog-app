require 'json'

def list_genres
  if File.exist?('./storage/source.json')
    source_list = JSON.parse(File.read('./storage/source.json'))

    source_list.each do |source|
      p ' ------------------------------------------------------------------------------ '
      p source['name']
    end
  else
    []
  end
end
