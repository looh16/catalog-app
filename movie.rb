require './item'

class Movie < Item
  attr_accessor :silent

  def initialize(silent)
    @silent = silet
  end

  private

  def can_be_archived? 
    if @silent == true || can_be_archived? == true
  true
else
  false
end
end