require_relative '../book'
require 'json'

class AddBook
  def add_book
    puts 'Enter book pusher (author)'
    publish = gets.capitalize.chomp
    puts 'Enter book pusher cover_state'
    coverstate = gets.capitalize.chomp
    puts 'Enter book publish date'
    publishdate = gets.chomp

    book = Book.new(publish, coverstate, publishdate)

    book_obj = {
      publisher: book.publisher,
      cover_state: book.cover_state,
      publish_date: book.publish_date
    }

    save_book(book_obj)
  end

  def save_book(book_obj)
    if File.exist?('./storage/book.json')
      if File.empty?('./storage/book.json')
        book_storage = [book_obj]
      else
        book_storage = JSON.parse(File.read('./storage/book.json'))
        book_storage << book_obj
      end
    else
      puts 'The file storage has been created'
      File.write('./storage/book.json', '')
    end
    File.write('./storage/book.json', JSON.pretty_generate(book_storage))
  end
end
