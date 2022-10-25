require 'item'

class MusicAlbum < Item
  attr_accessor :on_spotify

  def initialize(on_spotify)
    @on_spotify = on_spotify
  end

  private

  def can_be_archived?
    if @on_spotify == true && can_be_archived? == true
      true
    else
      false
    end
  end
end
