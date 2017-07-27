#Create a new hash
#collect the required informations from the user and store in the hash
#print the hash as it is for the client's reference
#prompt for editing 
#print the updated hash


clinet_requirement = Hash.new
puts "Hello! Welcome to the abc-interior decorators"
puts "Please enter your name"
clinet_requirement[:name]=gets.chomp
puts "Marital status(Married/Unmarried)"
clinet_requirement[:marital]=gets.chomp
puts "Number of children"
clinet_requirement[:children]=gets.chomp.to_i
puts "Your Decor Theme preference"
clinet_requirement[:decor_theme]=gets.chomp
puts "Automatic electrical control (Yes/No)"
clinet_requirement[:automatic_control]=gets.chomp

p clinet_requirement

puts "Do you wish to edit or update any of the above mentioned entries?, if so which entry"
response=gets.chomp
if response == "none" || response == "no"
	
		puts "Thank you for choosing abc-interior, we will email your shortly with a quote"
	
else 

		response=response.to_sym
		case response
		when :name
			puts	"Please enter your name"
			clinet_requirement[:name]=gets.chomp
		when :marital
			puts "Please enter Marital status"
			clinet_requirement[:marital]=gets.chomp
		when :children
			puts "Number of children"
			clinet_requirement[:clinet_requirement]=gets.chomp
		when :decor_theme
			puts "Theme preference"
			clinet_requirement[:decor_theme]=gets.chomp
		when :automatic_control
			puts "Automatic electrical control (Yes/No)"
			clinet_requirement[:automatic_control]=gets.chomp
		end
end

puts "Final Details"
p clinet_requirement










