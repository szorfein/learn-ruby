def array_length( anArray )
  return anArray.length
end

a0 = [ 1, 2, 3, 4, 5 ]
# other manner to create an array with single quotes
# The variant %W( ) use double quote
a1 = %w( ninja1 ninja2 ninja3 ninja4 )

puts( a1 )

a3 = [ 1, 'two', 3.0, array_length( a0 ) ]
p( a3 )

# see the 4 element
puts "look the four element = #{a0[4]}"

# to see with a loop
for i in a3
  puts(i.inspect)
end
# or
for i in 0..a3.size
  puts a3[i]
end
# or again faster
a3.each { |word| puts word }

# indexing into Array
arr_hello = ['h','e','l','l','o',' ','w','o','r','l','d']
print( arr_hello[0,5] ) # return "h", "e", "l", "l", "o"
print( arr_hello[0..4] ) # return "h", "e", "l", "l","o"
print( arr_hello[-5..-1] ) # return "w", "o", "r", "l" "d"

# shift remove element from beginning
a = [ 0, 1, 2, 3 ]
a.shift(0)

# unshift place an item in the array
a = [ 1, 2, 3, 4 ]
a.unshift(0)

# add only one item with <<
a = [ 1, 2, 3, 4 ]
a << 5

# push add many items to the end
a = [ 1, 2, 3, 4 ]
a.push(6,7,8,9)

# remove last item with pop
a = [ 1, 2, 3, 4, 5 ]
a.pop 

# concatenating
a =[1, 2, 3]
b =[4, 5, 6]
puts a << b
