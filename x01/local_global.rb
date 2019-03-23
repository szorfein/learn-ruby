localvar = "Hello"
$globalvar = "Goodbye"

def amethod
  localvar = 10
  puts localvar
  puts "global var is = " + $globalvar
end

def anotherMethod
  localvar = 500
  $globalvar = "bonjour"
  puts( localvar )
  puts( "Erase Goodbye with " + $globalvar )
end


amethod
anotherMethod
