# List files in a directory with Dir
puts "Content of /etc directory:"
etc_dir = Dir.new("/etc")
etc_dir.each { |entry| puts entry }

# Create a directory
Dir.mkdir( "./new_dirs", 700)

# list file in current dir
puts Dir.pwd

# Remove a dir
Dir.rmdir( "./new_dirs" )

# Open a file
file = File.open( "command.rb" ) if File::exists?( "command.rb" )
# lineno insert the line number followed by a '.' and the line
file.each { |line| print "#{file.lineno}. ", line }
file.close

# New file with [w]rite
File.new( "books.txt", "w" )

# Rename
File.rename( "books.txt", "chaps.txt" )

# And delete
File.delete( "chaps.txt" )
