require './item'

class Movie < Item
  attr_accessor :silent

  def initialize(silent, publish_date)
    super(publish_date)
    @silent = silent
  end

  private

  def can_be_archived?
    @silent == true || super
  end
end
