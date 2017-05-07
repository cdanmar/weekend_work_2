class Tree
  def initialize
    @rings = rings
    # @bear_fruit = bear_fruit
    # @winter_season = winter_season
  end

  def rings
    @rings = 0
  end
end 


# Driver code - don't touch anything below this line.
puts "TESTING the Tree class..."
puts

tree = Tree.new

result = tree.rings

puts "rings returned:"
puts result
puts

if result == 0
  puts "PASS!"
else
  puts "F"
end
puts