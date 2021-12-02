moves = File.readlines('day2_1_data.txt')
            .map(&:strip)

aim = 0
horizontal_position = 0
depth = 0

def val(move)
  move.split(' ').last.to_i
end

moves.each do |move|
  case move
  when /^forward/
    horizontal_position += val(move)
    horizontal_move = val(move)
    depth += horizontal_move * aim
  when /^up/
    aim -= val(move)
  when /^down/
    aim += val(move)
  end
end

puts horizontal_position * depth
