# / /i will match with caps and not
the_time = '10:24 AM'
puts "it's morning!" if /am/i =~ the_time

# Start with 'Once' with \A or ^
s = "Once upon a time"
puts "it begin with Once!" if /\AOnce upon a time/ =~ s

# End with 'after' with \z or $
s = "and they all lived happily ever after"
puts "it's ending with after" if /and they all lived happily ever after\z/ =~ s
