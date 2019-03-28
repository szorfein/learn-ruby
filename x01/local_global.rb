local_var = "Hello"
# global var are written in MAJ (ruby convention) and start by a $
$GLOBAL_VAR = "Goodbye"

def amethod
  local_var = 10
  puts local_var
  # we can use < " " + var > or " #{var}"
  puts "global var is = " + $GLOBAL_VAR
end

def anotherMethod
  local_var = 500
  $GLOBAL_VAR = "bonjour"
  puts( local_var )
  puts( "Erase Goodbye with #{$GLOBAL_VAR}" )
end

amethod
anotherMethod
