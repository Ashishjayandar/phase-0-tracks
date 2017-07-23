#Employee Verification 

#No of employees
puts "Please Enter the number of employees to be processed"
ind=gets.to_i
counter = 0
while counter < ind do	
	#Data Collection
	puts "Please enter your name"
	usr_name = gets.chomp
	puts "How old are you?"
	usr_age= gets.chomp
	puts "What year were you born?"
	usr_year= gets.chomp
	puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes/no)"
	usr_choice = gets.chomp
	puts "Would you like to enroll in the company’s health insurance?(yes/no)"
	usr_insurance = gets.chomp

	#Validation_checks

	usr_age = usr_age.to_i
	usr_year = usr_year.to_i
	#age_check
	age = 2017 - usr_year

	if (usr_age != age) || (usr_age > 150)
		age_flag = true						#the flags are to indicate something is going on out of the ordinary.
	else
		age_flag = false
	end

	#garlic_check

	if usr_choice == "no" 
		garlic_flag = true
	elsif usr_choice == "yes"
		garlic_flag = false
	end

	#insurance_check

	if usr_insurance == "no"
		insurance_flag = true
	elsif usr_insurance == "yes"
		insurance_flag = false		#as you see they go off when things are going out of normalcy 
	end

	#analysis
	vsi=0 #vsi-vampire sensitivity index
	if (age_flag && (garlic_flag && insurance_flag)) 
			vsi = 3
	elsif (age_flag && (garlic_flag || insurance_flag)) == false
			vsi = 1
	elsif (age_flag && (garlic_flag || insurance_flag)) 
	 		vsi = 2
	end

	if (usr_name == "Drake Cula") || (usr_name == "Tu Fang")
		red_flag=1								#major flag for name 
	end

	#allergies
	usr_input = ""
	allergies = ""
	id = 0
	until usr_input == "done"
	puts "Please Enter your allergies one by one, type 'done' when finished"
	usr_input= gets.chomp
		if usr_input != "done"
				allergies[id] = usr_input	
					if usr_input == "sunshine"
						vsi = 2
						break								#causes the loop to break and exit
					end
				id +=1
		end
	end

	if vsi == 1 && red_flag == 1
		puts "Definitely a vampire"
	elsif vsi == 1
		puts "Probably not a vampire"
	elsif vsi == 2
		puts "Probably a vampire"
	elsif vsi == 3
		puts "Almost certainly a vampire"
	else
		puts "Results are inconclusive."
	end	


	counter += 1
end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."


