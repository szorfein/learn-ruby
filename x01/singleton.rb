# There are other manner to create object too called Singleton 
# Singleton are stuck to a single object instance
thing = Object.new

# With this method, you can't use initialize
def thing.set_name( aName, aDescription )
  @name = aName
  @description = aDescription
end

def thing.to_s
  return "The #{@name} Treasure is #{@description}\n"
end

# Alternative singleton call
thing = Object.new

class << thing
  def set_name( aName, aDescription )
    @name = aName
    @description = aDescription
  end

  def to_s
    return "The #{@name} Treasure is #{@description}\n"
  end
end

thing.set_name( "A lovely Thing", "an Elvish weapon forged of gold" )
puts thing.to_s
