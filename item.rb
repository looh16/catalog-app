class Item
  attr_accessor :genre, :author,
                :source, :label, :publish_date

  def initialize(genre, author, source, label, publish_date)
    @genre = genre
    @author = author
    @source = source
    @label = label
    @publish_date = publish_date
    @id = Random.rand(0...100)
    @archived = false
  end

  private

  attr_accessor :id, :archived

  def can_be_archived?; end
end
