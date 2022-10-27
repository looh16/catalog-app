require_relative '../game'
require_relative '../source'
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

    puts 'Enter game source name:'
    source_name = gets.chomp

    source = Source.new(source_name)
    game = Game.new(multiplayer, last_played_at, publish_date)
    game.add_source(source)

    game_obj = {
      multiplayer: game.multiplayer,
      last_played_at: game.last_played_at,
      publish_date: game.publish_date,
      source_name: game.source.name
    }

    source_obj = {
      name: source.name
    }

    save_source(source_obj)
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

  def save_source(source_obj)
    if File.exist?('./storage/source.json')
      if File.empty?('./storage/source.json')
        source_storage = [source_obj]
      else
        source_storage = JSON.parse(File.read('./storage/source.json'))
        source_storage << source_obj
      end
    else
      puts 'The file storage has been created'
      File.write('./storage/source.json', '')
    end
    File.write('./storage/source.json', JSON.pretty_generate(source_storage))
  end
end
