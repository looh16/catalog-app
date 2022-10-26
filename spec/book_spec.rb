require './item'
require './book'

describe Book do

    it 'should return the book instance' do
      book = Book.new('Jhon', 'bad', '2020-01-01')
      expect(book.publisher).to eq 'Jhon'
    end

end