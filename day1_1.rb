series = File.readlines('day1_data.txt').map(&:strip).map(&:to_i)

count = 0

series.each_with_index do |depth, index|
  break if series[(index+1)].nil?
  if (depth < series[(index+1)]) then count += 1 end
end

puts count
