class Weapons
  # constant are always in capital letter
  SWORDS = ["Katana", "Kunai", "Shikomizue","Yumi", "Tekko-Gaki", "Kusarigama"]

  def initialize(sword)
    if SWORDS.include?(sword)
      @sword = sword
    else
      raise ArgumentError, "Unknown sword #{sword}"
    end
  end

  def to_s
    return "Good choice with #{@sword}"
  end
end

weapon1 = Weapons.new("Katana")
puts "#{weapon1.to_s}"

# We can have access to the constant with ::
puts "There are no Shuriken in #{Weapons::SWORDS}"

# So, we add a new Shuriken
Weapons::SWORDS << "Shuriken"

weapon2 = Weapons.new("Shuriken")
puts weapon2.to_s
