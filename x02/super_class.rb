# We use a super class Ninja
# All ninja have a weapon and color dress :)
class Ninja
  def initialize( aWeapon, aColor )
    @weapon = aWeapon
    @color = aColor
  end
end

# we create a class warrior herit of Ninja
class Warrior < Ninja
  attr_accessor :weapon, :color
  def initialize( aWeapon, aColor )
    # we use variable from superclass Ninja to avoid to rewrite them
    super( aWeapon, aColor )
  end
  def to_s
    puts "Use #{@weapon} and dress color #{@color}"
  end
end

warrior = Warrior.new( "sword", "red" )
ninja = Warrior.new( "dagger", "black" )

warrior.to_s
ninja.to_s
