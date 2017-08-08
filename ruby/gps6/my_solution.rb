# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative looks for files relative to the file and loads the file
# require allows you to access other libraries (i.e. gems) and loads the libraries

require_relative 'state_data'

class VirusPredictor

  # Each time a new instance is created, initialize is called and it instantiates the variables. 
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # calls both predicted_deaths and speed_of_spread and uses both return values
  # returns last line which is a string printed
  
  def virus_effects
    predicted_deaths#(@population_density, @population, @state)
    speed_of_spread#(@population_density, @state)
  end

  private

  # depending on the value of population_density, number_of_deaths will be set 
  # to a certain value
  # Prints number_of_deaths
  def predicted_deaths#(population_density, population, state)
    # predicted deaths is solely based on population density
  #   if @population_density >= 200
  #     number_of_deaths = (@population * 0.4).floor
  #   elsif @population_density >= 150
  #     number_of_deaths = (@population * 0.3).floor
  #   elsif @population_density >= 100
  #     number_of_deaths = (@population * 0.2).floor
  #   elsif @population_density >= 50
  #     number_of_deaths = (@population * 0.1).floor
  #   else
  #     number_of_deaths = (@population * 0.05).floor
  #   end

  #   print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  # end
    case @population_density
      when  200..
        number_of_deaths = (@population*0.4).floor
      when 150..199
        number_of_deaths = (@population*0.3).floor
      when  100..149
        number_of_deaths = (@population*0.2).floor
      when 50..99
        number_of_deaths = (@population*0.1).floor
      else
        number_of_deaths = (@population*0.05).floor      
    end
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end

  # depending value of population_density, speed is set to a certain value (integer)
  # prints speed 
  def speed_of_spread#(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end
    # case @population_density
    #   when  200..300
    #    speed += 0.5
    #   when 150..199
    #     speed += 1
    #   when  100..149
    #     speed += 1.5
    #   when 50..99
    #     speed += 2
    #   else
    #     speed += 2.5     
    # end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

#state=[]

STATE_DATA.each do |key,value|
state = VirusPredictor.new(key,STATE_DATA[key][:population_density],STATE_DATA[key][:population])
state.virus_effects
end


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
# 1.The difference between the two syntaxes is that one key is a string and hence it is stored using => and the 
# other is an identifier and hence can be stored as a symbol
#2.The require_relative imports the code from the file that we mention, the file is from the same system that we are using,the 
#require on the other hand loads the functionality associated with the file and also uses gem to locate information online as well.
#3.We can use .each or .map to iterate through the hash
#4. The variables were already instance variables which were already available all through the class so they were redundant in passing them on
#5.I was able to easily iterate through the data structures in this challenge and also learn a lot more about the nested data structures.



