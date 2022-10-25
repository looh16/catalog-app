class Item
  attr_accessor :genre, :author,
                :source, :label, :publish_date

  def initialize(genre, author, source, label, publish_date)
    @id = Random.rand(0...100)
    @genre = genre
    @author = author
    @source = source
    @label = label
    @publish_date = publish_date
    @archived = archived
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
