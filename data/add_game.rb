require_relative '../game'
require 'json'

class AddGame
  def add_game
    puts 'Is the game multiplayer? [y/n]:'
    multiplayers = gets.chomp.upcase
    multiplayer = false
    multiplayer = true if multiplayers == 'Y'

    puts 'Enter the last time you played the game (HH : MM : SS):'
    last_played_at = gets.chomp
    puts 'Enter game publish date (YY-MM-DD):'
    publish_date = gets.chomp

    game = Game.new(multiplayer, last_played_at, publish_date)

    game_obj = {
      multiplayer: game.multiplayer,
      last_played_at: game.last_played_at,
      publish_date: game.publish_date
    }

    save_game(game_obj)
  end

  def save_game(game_obj)
    if File.exist?('./storage/game.json')
      if File.empty?('./storage/game.json')
        game_storage = [game_obj]
      else
        game_storage = JSON.parse(File.read('./storage/game.json'))
        game_storage << game_obj
      end
    else
      puts 'The file storage has been created'
      File.write('./storage/game.json', '')
    end
    File.write('./storage/game.json', JSON.pretty_generate(game_storage))
  end
end
