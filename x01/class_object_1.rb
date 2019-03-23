" class in Maj "
class Dog
  # setters
  def set_name( aName = "Default name: Noname" )
    @myname = aName
  end

  # getters
  def get_name
    return @myname
  end
end

# init object
dog_1 = Dog.new
dog_2 = Dog.new

# set a name or not
dog_1.set_name('Doug')
dog_2.set_name()

# get value
puts dog_1.get_name
puts dog_2.get_name
