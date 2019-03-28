# all class method are public as default

# private class are available in the current object

# protected is only accessible in the object
class Names 

  def initialize( given, family, nick, pet )
    @given = given
    @family = family
    @nick = nick
    @pet = pet
  end

  def given
    @given
  end

  def family
    @family
  end

  # all method bellow 'private' are private
  private

  def nick 
    @nick
  end

  # the same with protected
  protected

  def pet
    @pet
  end
end

name = Names.new( "Klyde", "Kimball", "Abner", "Teddy Bear" )

name.given
name.family
name.nick #=> error because private
name.pet #=> error because protected
