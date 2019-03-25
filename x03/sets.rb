# Use of sets

# first,  sets need require
require 'set'

state = Set.new(["New Jersey", "New York"])
# or
state2 = Set.new( %w( New\ Jersey New\ York ) )

# Add a new element
state << "Washington"

# Add the same element again
state << "Washington"

# Washington is show only one time with sets
p state

# Delete an entrie
state.delete("New York")

# use add or << is the same thing
state.add("New York")

# Do a copy 
state_set = Set.new(state)
state_set << "Memphis"
p state_set

# test equality
p( state == state_set )

# look difference, alias -  between 2 sets
p state_set - state #=> Memphis

# union, alias +
p state_set + state

# intersection, alias &
p state_set & state
p state_set | state 
p state_set ^ state #=> Memphis
