# Creating new hashes with 3 methods
# 1, the shorter
h1 = {}
# 2 with Hash.new
h2 = Hash.new("Some kind of ring")
# 3 with Hash[ ] class method, return an error if no paired
h3 = Hash["room1", "The Treasure Room", "Room2", "The Throne Room"]
puts h3

# Insert new items
h2['treasure1'] = 'Silver ring'
# or
h2.[]=("treasure2", "Gold ring")
# or with store
h2.store("treasure3", "Diamond ring")

puts h2

# shorter way
h1 = { 'room1' => 'The treasure Room',
       'room2' => 'The Throne Room',
       'loc1' => 'A Forest Glade',
       'loc2' => 'A Mountain Stream' }

puts h1['room2']

# Or too
hash = { red: "ruby", white: "diamond", green: "emerald" }
puts hash[:red]

# display with a loop
hash.each { |entry| p entry }
# or print the pair name, value
hash.each { |name, value| puts "#{name} has #{value}" }

# Complex collections
users_list = {
  john: {
    phone: "555-1234",
    email: "john@example.com"
  },
  eric: {
    phone: "555-1234",
    email: "eric@example.com" }
}
# get an element with dig
puts users_list.dig(:eric, :email) #=> eric@example.com
