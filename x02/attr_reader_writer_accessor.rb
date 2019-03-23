class Thing
  # attr_reader = shorter version of method like:
  # def name 
  #   return @name 
  # end
  attr_reader :name

  # attr_writer, replace code:
  # def price( gold )
  #   @price = gold
  # end
  attr_writer :price

  # shorter version attr_writer AND attr_reader 
  attr_accessor :type_weapon

  def initialize( aName, aDescription )
    @name = aName
    @description = aDescription
  end

  def to_s
    "Found a #{@type_weapon} named #{@name} and #{@description} and cost #{@price} gold"
  end

end

thing = Thing.new("Sword", "Short like a dagger")

# we use attr_reader
puts thing.name

# we use attr_writer
thing.price = 100

# and the attr_accessor
thing.type_weapon = "sword"
puts thing.type_weapon

puts thing.to_s
