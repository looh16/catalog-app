require_relative '../genre'
require_relative '../item'

describe 'When checking the genre' do
  it 'Should return the genre name' do
    name = 'Afro rap'
    genre = Genre.new(name)
    expect(genre.name).to eq(name)
  end

  it 'should add the item to the instance' do
    name = 'Afro rap'
    genre = Genre.new(name)
    item = Item.new('12/05/2022')
    genre.add_item(item)

    expect(genre.items.length).to be(1)
  end
end
