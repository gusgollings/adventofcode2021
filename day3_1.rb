report = File.readlines('day3_1_data.txt')
             .map(&:strip)
             .map(&:chars)
             .transpose 
gamma = ""
report.each do |row|
  gamma << (row.group_by(&:itself)["1"].length > (row.length/2) ? "1" : "0")
end
epsilon = gamma.tr("10","01").to_i(2)
puts gamma.to_i(2) * epsilon
