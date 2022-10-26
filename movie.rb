require './item'

class Movie < Item
  attr_accessor :silent

  def initialize(silent)
    super(publish_date)
    @silent = silent
  end

  private

  def can_be_archived?
    @silent == true || can_be_archived? == true
  end
end
