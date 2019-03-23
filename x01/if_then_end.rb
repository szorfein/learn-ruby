taxrate = 0.175
print "Enterprice (ex tax):"
s = gets
subtotal = s.to_f

if (subtotal < 0.0) then
  subtotal = 0.0
end

tax = subtotal * taxrate
puts "Tax on $#{subtotal} is $#{tax}, so grant total is $#{subtotal+tax}"
