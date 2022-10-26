require_relative '../item'
require_relative '../genre'
require_relative '../label'

describe ('When checking item') do
  it ('Should verify if the item can be archived or not') do
    item = Item.new('12/05/2020')
    item2 = Item.new('11/06/2001')

    expect(item.move_to_archive).to be(nil)
    expect(item2.move_to_archive).to be(true)
    expect(item2.archived).to be(true)
  end

  it ('should return an instance of genre class') do
    name = 'Afro rap'
    genre = Genre.new(name)
    item = Item.new('12/05/2022')
    item.add_genre(genre)

    expect(item.genre.class).to eq(Genre)
  end

  it ('should return an instance of label class') do
    title = 'Music label'
    color = 'red-blue'
    label = Label.new(title, color)
    item = Item.new('12/05/2022')
    item.add_label(label)

    expect(item.label.class).to eq(Label)
  end
end
