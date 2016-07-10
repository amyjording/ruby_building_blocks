#this solution does not work properly.
#it was my attempt without looking for help on how to approach it
#I got close but ran into dead ends and finally got on the right track
#stock2.rb reflects this

def stock_picker (stocks = Array.new(7) { rand(02..40) })
# stocks1 = stocks.each_with_index.to_h.invert
stocks2 = Array.new(7) { rand(2..40) }
minpick = stocks.each_with_index.min
minHash = Hash[*minpick]

minpick[1].include? 6

 maxpick = stocks2.each_with_index.max
#   maxHash = Hash[*maxpick]
else
      #  if maxpick[1] < stocks.index(minpick[1]) then
      #    next
    #    else
    #   maxpick = stocks.each_with_index.max
    #   maxHash = Hash[*maxpick]
  #     end

end

end
puts stocks
puts stocks2
puts minHash
puts maxHash
puts "Best day to buy is " + "#{minHash.values}," + " at a price of " + "#{minHash.keys}."
puts "Best day to sell is " + "#{maxHash.values}," + " at a price of " + "#{maxHash.keys}."

if minpick[1] > maxpick[1]

  puts " of the next week."

end
end

stock_picker
