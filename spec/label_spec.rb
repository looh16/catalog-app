require_relative '../label'
require_relative '../item'

describe ('When checking the label') do
 it ('Should return the label title and color') do
    title = 'Music label'
    color = 'red-blue'
    label = Label.new(title, color)
    
    expect(label.title).to eq(title)
    expect(label.color).to eq(color)
 end

 it ('should add the item to the instance') do
    title = 'Music label'
    color = 'red-blue'
    label = Label.new(title, color)
    item = Item.new('12/05/2022')
    label.add_item(item)

    expect(label.items.length).to be(1)

 end
end