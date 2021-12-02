moves = File.readlines('day2_1_data.txt')
            .map(&:strip)
            #.map(&:to_i).each_cons(3).to_a.map {|ary| ary.sum }

forwards = moves.select { |move| move.start_with?('forward') }
ups = moves.select { |move| move.start_with?('up') }
downs = moves.select { |move| move.start_with?('down') }

forward_total = forwards.sum { |move| move.split(' ')[-1].to_i }
downs_total = downs.sum { |move| move.split(' ')[-1].to_i }
ups_total = ups.sum { |move| move.split(' ')[-1].to_i }
depth = downs_total - ups_total
answer = depth * forward_total
puts answer
