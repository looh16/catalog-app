require 'item'

class Book < Item
  attr_accessor :publisher, :cover_state

  def initialize(publisher, cover_state)
    super()
    @publisher = publisher
    @cover_state = cover_state
  end

  private

  def can_be_archived?
    @cover_state == 'bad' || can_be_archived? == true
  end
end
