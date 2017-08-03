class Santa
	attr_accessor :age, :gender 
	attr_reader   :ethnicity
	def initialize(gender,ethnicity)
		@gender= gender
		@ethnicity= ethnicity
		@reindeer_ranking=["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age=0
		puts "Santa class initialized"
	end
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
		#puts "I am a #{@ethnicity}"
	end
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}"
		#puts "At my age of #{@age} I shouldn't be eating cookies"
	end
	def celebrate_birthday
		@age+=1
	end
	def get_mad_at(deer_name)
		@reindeer_ranking.each do |name|
			if name == deer_name
				@reindeer_ranking.insert(8,@reindeer_ranking.delete_at(@reindeer_ranking.index(name)))
			end
		end
		puts @reindeer_ranking
	end
	#setter method
	# def gender=(new_gender)
	# 	@gender = new_gender
	# 	puts "The new gender is #{@gender}"
	# end
	#getter methods
	# def age
	# 	@age
	# end
	# def ethnicity
	# 	@ethnicity
	# end

end

# puts"Enter your gender"
# gender=gets.chomp
# puts "Enter your ethnicity"
# ethnicity=gets.chomp
# chirst=Santa.new(gender,ethnicity)
# chirst.speak
# chirst.eat_milk_and_cookies("snikerdoodle")
santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

# santas.each do |santa|
# 	santa.speak
# 	puts "--------"
# end
# santas[0].get_mad_at("Rudolph")
# santas[1].gender="centuar"
# puts "The new gender is #{santas[1].gender}"
# p santas[1].age
# santas[1].celebrate_birthday
# p santas[1].age
# p santas[1].ethnicity


1000.times do |count|
	santa=Santa.new(example_genders.sample,example_ethnicities.sample)
	santa.age=rand(140)
	puts "#{count}This santa is a #{santa.gender}"
	puts "Santa is #{santa.age} year(s) old"
end















