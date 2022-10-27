require 'json'

class ListAuthors
  def list_all_authors
    if File.exist?('./storage/author.json')

      if File.empty?('./storage/author.json')
        puts 'There is nothing in the library, please add authors and books'
      else
        authors = JSON.parse(File.read('./storage/author.json'))

        authors.each do |author|
          p ' ------------------------------------------------------------------------------ '
          puts " #{author['first_name']}  #{author['last_name']}, id: #{author['id']} "
        end
      end
    else
      puts 'There is nothing in the library, please add authors and books'
    end
  end
end
