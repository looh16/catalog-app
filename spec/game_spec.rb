require_relative '../item'
require_relative '../game'

describe Game do
  context 'instantiate game object' do
    before :each do
        @game = Game.new(true,'2022-08-08', '2020-01-01')
      end

      it 'should return the game instance' do
        expect(@game).to be_instance_of(Game)
      end

  end
end