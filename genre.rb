class Genre
    attr_accessor :name

    def initialize(name)
      @name =  name
      @items = []
      @id = Random.rand(0...1000)
    end

    add_item(item)
     @items.push(item)
     item.genre = self
    end

    private
    attr_accessor :id, :items
end