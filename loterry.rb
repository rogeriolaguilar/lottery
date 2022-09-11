# Given the loterry numbers, display result of the bets in bets.txt
numbers = "01 - 03 - 05 - 07 - 08 - 09 - 10 - 11 - 12 - 15 - 16 - 17 - 20 - 22 - 24".split(" - ")
results = []
File.foreach("bets.txt") do |line| 
   bet = line.split
   matches = numbers.select {|n| bet.include?(n) }
   results.push([matches, bet])
end
results.sort_by{|r| - r[0].size }.each{|r| puts "#{r[0].count} matches. Bet: #{r[1].join(' ')}"}
