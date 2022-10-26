require 'date'

class Item
  attr_reader :id, :archived, :genre
  attr_accessor :author,
                :source, :label, :publish_date

  def initialize(publish_date)
    @id = Random.rand(0...100)
    # @author = author
    # @source = source
    @publish_date = DateTime.parse(publish_date).to_date.year.to_i
    @archived = false
  end

  def move_to_archive
    if can_be_archived?
      @archived = true
    end
  end

  def add_genre(genre)
    @genre = genre
    genre.items.push(self) unless genre.items.include?(self)
  end

  def add_label(label)
    @label = label
    label.items.push(label)  unless label.items.include?(self)
  end

  private
  def can_be_archived?
    current_date = DateTime.now.year.to_i
    if current_date - @publish_date > 10
      true
    else
      false
    end
  end
end
