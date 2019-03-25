# Start creating a simple class
# A method can serve to control a variable before add a new value
class Ninja
  attr_accessor :name
  attr_accessor :weapon

  def initialize( aName, aWeapon )
    @name = aName
    @weapon = aWeapon
  end

  # here declaration of method
  def Ninja.isExist()
    if @name == "Koshi" then
      puts( "You created Koshi")
    else
      puts( "Set up Koshi" )
    end
  end
end

ninja = Ninja.new("Koshi", "Kunai")
puts( "#{ninja.name} #{ninja.weapon}" )

# this work
Ninja.isExist
# but not this
ninja.isExist
