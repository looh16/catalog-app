class Movie
  attr_accessor :silet

  def initialize(silet)
    @silet = silet
  end

  private

  def can_be_archived?; end
end
