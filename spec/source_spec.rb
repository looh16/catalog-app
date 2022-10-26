require_relative '../source'
require_relative '../item'

describe 'When checking the source' do
    it 'Should return the source name' do
      name = 'Composer'
      source = Source.new(name)
      expect(source.name).to eq(name)
    end
  
    it 'should add the item to the instance' do
      name = 'Composer'
      source = Source.new(name)
      item = Item.new('12/05/2022')
      source.add_item(item)
  
      expect(source.items.length).to be(1)
    end
  end
  