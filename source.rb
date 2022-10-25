class Source
    attr_accessor :name

    def initialize(name)
    @id = Random.rand(0...1000)
    @name = name
    @items = []
    end

    add_item(item:Item)
      
    end

    private
    attr_accessor :id, :items
end
