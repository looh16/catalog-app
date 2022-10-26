require 'date'

class Item
  attr_reader :id, :archived, :genre
  attr_accessor :author,
                :source, :label, :publish_date

  def initialize(publish_date)
    @id = Random.rand(0...100)
    @publish_date = DateTime.parse(publish_date).to_date.year.to_i
    @archived = false
  end

  def move_to_archive
    @archived = true if can_be_archived? == true
  end

  def add_genre(genre)
    @genre = genre
    genre.items.push(self) unless genre.items.include?(self)
  end

  def add_label(label)
    @label = label
    label.items.push(label) unless label.items.include?(self)
  end

  def add_source(source)
    @source = source
    source.items.push(source) unless source.items.include?(self)
  end

  def add_author(author)
    @author = author
    author.items.push(author) unless author.items.include?(self)
  end

  private

  def can_be_archived?
    current_date = DateTime.now.year.to_i
    current_date - @publish_date > 10
  end
end
