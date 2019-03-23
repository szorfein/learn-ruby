localvar = "Hello"
$globalvar = "Goodbye"

def amethod
  localvar = 10
  puts localvar
  # we can use < " " + var > or " #{var}"
  puts "global var is = " + $globalvar
end

def anotherMethod
  localvar = 500
  $globalvar = "bonjour"
  puts( localvar )
  puts( "Erase Goodbye with #{$globalvar}" )
end


amethod
anotherMethod
