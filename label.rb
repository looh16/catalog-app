class Label
    attr_accessor :title, :color

    def initialize(title, color)
        @id = Random.rand(0...1000)
        @title = title
        @color = color
        @items = []
    end

    add_item(item:Item)
      
    end

    private
    attr_accessor :id,items 
end
