require './item'

class Game < Item
  attr_accessor :multiplayer, :last_played_at

  def initialize(multiplayer, last_played_at)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  private

  def can_be_archived? 
    current_date = Date.now.Year
    gap = current_date - @last_played_at.to_i 
    
    if can_be_archived? == true && gap > 2
      true 
   else
      false 
   end
end
