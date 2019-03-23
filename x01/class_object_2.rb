class Thing
  def set_name( aName )
    @name = aName
  end

  def get_name
    return @name
  end
end

# Replace set_name with initialize
class Treasure
  def initialize( aName, aDescription )
    @name = aName
    @description = aDescription
  end
  def to_s
    "The #{@name} Treasure is #{@description}\n"
  end
end

thing_1 = Thing.new
thing_1.set_name( "A lovely Thing" )
puts thing_1.get_name

t1 = Treasure.new("Sword", "an Elvish weapon forged of gold")
t2 = Treasure.new("Ring", "a magic ring of great power")
puts t1.to_s
puts t2.to_s

# inspect method to see inside an object
puts "Inspecting 1st treasure #{t1.inspect}"
