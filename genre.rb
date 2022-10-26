require './movie'

class Genre
    attr_accessor :name

    def initialize(name)
      @id = Random.rand(0...1000)
      @name =  name
      @items = []
    end

    def add_item(item)
     @items.push(item)
     item.genre = self
    end

    private

    attr_accessor :id, :items
end