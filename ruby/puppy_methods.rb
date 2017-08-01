
class Puppy
  def initialze
    puts "initializing new puppy instance"
  end
 
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  def speak(num)
    puts "Woof!!!" * num
  end
  def roll_over
    puts "**roll over**"
  end
  def dog_years(num)
    puts num * 7
  end
  def sit(name)
    puts "#{name} sits down"
  end
  

end

fido = Puppy.new
spot = Puppy.new
spot.sit("spot")
#spot.initialze
fido.speak(3)
fido.roll_over
fido.dog_years(3)
fido.sit("fido")




class Basketball
  def initialize
    puts "initializing new swimmer instance"
  end
  def jumpshot(num)
    puts "You did #{num} jumpshots. Good job!"
  end
  def block(num)
    puts "You blocked #{num} shots. Good job!"
  end
  def dunk(name)
    puts "You dunked on #{name}! You are awesome!"
  end
end

 
  basketball_array = []
  50.times do |basketball|
    basketball_array << Basketball.new
  end
 
   puts basketball_array
names = ["Joe", "Kim", "Barbara", "Mike"]
  basketball_array.each do |x|
    x.dunk(names.sample)
    x.jumpshot(rand(5))
    x.block(rand(5))
  end
