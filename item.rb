

class Item
  attr_accessor :genre, :author,
                :source, :label, :publish_date

  def initialize(publish_date)
    @id = Random.rand(0...100)
    @publish_date = publish_date
    @archived = archived
  end

  def add_genre(genre)
      @genre = genre
      genre.items.push(self) unless genre.items.include?(self)
  end

  def move_to_archive
    if can_be_archived?
      @archived = true
    end
  end

  private

  attr_accessor :id, :archived

  def can_be_archived?
    current_date = Date.now.Year
    current_date - @publish_date.to_i > 10
  end
end
