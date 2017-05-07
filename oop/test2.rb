class Tree
  attr_accessor :rings, :bear_fruit, :winter_season

  def initialize(params = {})
    @rings = params.fetch(:rings, 0)
    @bear_fruit = params.fetch(:bear_fruit, false)
    @winter_season = params.fetch(:winter_season, 0)
  end

  def bear_fruit?
    if @winter_season > 7 && @winter_season < 15
      @bear_fruit = true
    else
      @bear_fruit = false
    end

  end

  def winter_season
    @winter_season += 1
  end
end



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

result = tree.bear_fruit?

puts "bear_fruit? before the first winter:"
puts result
puts

if result == false
  puts "PASS!"
else
  puts "F"
end
puts

8.times do
  tree.winter_season
end

result = tree.bear_fruit?

puts "bear_fruit? after 8 winters:"
puts result
puts

if result == true
  puts "PASS!"
else
  puts "F"
end

7.times do
  tree.winter_season
end

result = tree.bear_fruit?

puts "bear_fruit? after 15 winters:"
puts result
puts

if result == false
  puts "PASS!"
else
  puts "F"
end