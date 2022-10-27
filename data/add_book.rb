require_relative '../book'
require_relative '../author'
require 'json'

class AddBook
  def add_book
    puts 'Enter the author first name :'
    first_name = gets.capitalize.chomp
    puts 'Enter the author last name :'
    last_name = gets.capitalize.chomp
    puts 'Enter the book publisher :'
    publish = gets.capitalize.chomp
    puts 'Enter the book cover_state:'
    coverstate = gets.capitalize.chomp
    puts 'Enter the book publish date (YY-MM-DD):'
    publishdate = gets.chomp

    book = Book.new(publish, coverstate, publishdate)
    author = Author.new(first_name, last_name)

    book_obj = {
      publisher: book.publisher,
      cover_state: book.cover_state,
      publish_date: book.publish_date
    }

    author_obj = {
      id: author.id,
      first_name: author.first_name,
      last_name: author.last_name
    }

    save_book(book_obj)
    save_author(author_obj)
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

  def save_author(author_obj)
    if File.exist?('./storage/author.json')
      if File.empty?('./storage/author.json')
        author_storage = [author_obj]
      else
        author_storage = JSON.parse(File.read('./storage/author.json'))
        author_storage << author_obj
      end
    else
      puts 'The file storage has been created'
      File.write('./storage/author.json', '')
    end
    File.write('./storage/author.json', JSON.pretty_generate(author_storage))
  end
end
