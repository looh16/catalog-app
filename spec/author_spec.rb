require './item'
require './author'

describe Author do
  before :each do
    @authot = Author.new('Jhon', 'Matheus')
  end

  context 'Test for the Author class' do
    it 'should return the author instance' do
      expect(@authot).to be_instance_of(Author)
    end

    it 'should add the item to the instance' do
      item = Item.new('12/05/2022')
      @authot.add_item(item)

      expect(@authot.items.length).to be(1)
    end
  end
end
