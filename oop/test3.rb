class Yodel
  attr_accessor :segment, :count

  def initialize args
    args.each do |k,v|
      instance_variable_set("@#{k}", v) unless v.nil?
    end
  end

  def articulate
    @articulate = @segment * (@count)
  end
end




puts "TESTING the Yodel class..."
puts

yodel = Yodel.new({segment: "Oh-di-lay-ee-ay", count: 4})

p yodel

result = yodel.segment

puts "segment returned:"
puts result
puts

if result == "Oh-di-lay-ee-ay"
  puts "PASS!"
else
  puts "F"
end
puts

result = yodel.count

puts "count returned:"
puts result
puts

if result == 4
  puts "PASS!"
else
  puts "F"
end
puts

result = yodel.articulate

puts "articulate returned:"
puts result
puts

if result == 'Oh-di-lay-ee-ayOh-di-lay-ee-ayOh-di-lay-ee-ayOh-di-lay-ee-ay'
  puts "PASS!"
else
  puts "F"
end