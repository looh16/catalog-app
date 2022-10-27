require 'json'

class ListAllGames
  def list_all_games
    if File.exist?('./storage/game.json')

      if File.empty?('./storage/game.json')
        puts 'There is no game yet in the shop, please add games'
      else
        games = JSON.parse(File.read('./storage/game.json'))

        games.each do |game|
          p ' ------------------------------------------------------------------------------ '
          puts "The game was last played at #{game['last_played_at']}, Multiplayers: #{game['multiplayer']}, Published in #{game['publish_date']} "
        end
      end
    else
      puts 'The game shop is empty, please add a game'
    end
  end
end
