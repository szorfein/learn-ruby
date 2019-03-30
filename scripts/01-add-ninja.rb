class NinjaArmy
  @@number_soldier = 0
  SOLDIERS = []

  def addMember(aName)
    SOLDIERS << aName
    @@number_soldier += 1
  end
end

ninjaArmy = NinjaArmy.new

while true
  print( "Enter a Ninja name or [q] to quit: " )
  name = gets()
  case name
  when /^q/
    break
  else
    ninjaArmy.addMember(name)
  end
end

puts "Army contain #{NinjaArmy::SOLDIERS.length} soldiers."
NinjaArmy::SOLDIERS.each { |member| puts member }
