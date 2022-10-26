# require_relative '../item'
require 'date'

# item = Item.new('rap', 'JOhn Doe', 'Spotify', '92i', '2001')

# puts item.move_to_archive

date = '12/05/2010'
puts DateTime.parse(date).to_date.year