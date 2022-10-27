require 'json'

class ListOfBooks
  def list_of_books
    if File.exist?('./storage/book.json')
      books = JSON.parse(File.read(('./storage/book.json')))

      books.each do |book|
        p ' ------------------------------------------------------------------------------ '
        puts "Published by #{book['publisher']}, cover state: #{book['cover_state']}, published in #{book['publish_date']} "
      end
    else
      puts 'The library is empty, please add a book'
    end
  end
end
