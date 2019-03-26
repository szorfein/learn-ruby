# creation of module
module MyFirstModule
  def ruby_version
    system("ruby -v")
  end
end

# Include the module in a class
class ModuleTest
  include MyFirstModule
end

mt = ModuleTest.new
mt.ruby_version

# Create a module with a class
module Tools
  class Hammer
  end
end

h = Tools::Hammer.new
