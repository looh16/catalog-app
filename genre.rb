class Genre
  attr_reader :id, :items
  attr_accessor :name

  def initialize(name)
    super()
    @name = name
    @items = []
    @id = Random.rand(0...1000)
  end

  def add_item(item)
    @items.push(item)
    item.add_genre(self)
  end
end
