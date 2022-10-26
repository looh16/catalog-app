require './item'

class Game < Item
  attr_accessor :multiplayer, :last_played_at

  def initialize(multiplayer, last_played_at)
    super()
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  private

  def can_be_archived?
    current_date = DateTime.now.year
    gap = current_date - @last_played_at.to_i

    can_be_archived? == true && gap > 2
  end
end
