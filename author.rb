class Author
    attr_accessor :first_name, :last_name
    def initialize(first_name, last_name)
        @id = Random.rand(0...1000)
        @first_name = first_name
        @last_name = last_name
        @items = []
    end

    add_item(item:Item)
      
    end

 private
  attr_accessor :id, :items
  
end
