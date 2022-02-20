require './lib/rover'

puts 'Enter position'
position = gets
puts 'Enter commands'
commands = gets

rover = Rover.new(position)
rover.execute_commands(commands)

puts "#{rover.x_coordinate} #{rover.y_coordinate} #{rover.orientation}"
