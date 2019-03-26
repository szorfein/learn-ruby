# Replace set_name( aName ) with initialize
class Treasure
  def initialize( aName, aDescription )
    @name = aName
    @description = aDescription
  end
  def to_s
    "The #{@name} Treasure is #{@description}\n"
  end
end

t1 = Treasure.new("Sword", "an Elvish weapon forged of gold")
t2 = Treasure.new("Ring", "a magic ring of great power")
puts t1.to_s
puts t2.to_s

# inspect method to see inside an object
puts "Inspecting 1st treasure #{t1.inspect}"
