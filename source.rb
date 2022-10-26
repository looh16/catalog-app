class Source
  attr_accessor :name
  attr_reader :id, :items

  def initialize(name)
    super()
    @id = Random.rand(0...1000)
    @name = name
    @items = []
  end

  def add_item(item)
    @items.push(item)
    item.add_source(self)
  end
end
