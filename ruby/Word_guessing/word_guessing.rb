#Pseudo-code
# promt the user to input the word to be guessed
# store the word inside the class
# based on the length of the word set the number of guesses to twice the length.
#display the word as blanks on the screen and let the user start guessing with one letter at a time.
#as and when the user guesses the number of guesses available reduces, with the exception of repeated guesses.
#when the letter matches a letter in the word, display the letter in its position.
#do the same till either the no of guesses run out or when the player has guessed the word completely.
#congratulate the user and end the program.


class WordGame
	attr_accessor :word, :guesses, :id, :dashes, :guess 
	attr_reader :gameover
	def initialize(word)
		@word = word.split("")
		@guesses = word.length * 2
		@guessed_char=[]
	end
	
	def guessed_letter(char)
			if @guessed_char.include?(char)
					p "Already Guessed, Try something else"
			else
				@guessed_char << char
				@guesses -=1
				if @word.include?(char)
						@id= (0 ... @word.length).find_all { |i| @word[i] == char }
						@id.each do |x|
							@dashes[x]= char
						end
					p "Good job!"
					p	@dashes
				else
					p "Oops! Not there...Try again!"
					p @dashes
				end
			end
		guess_limit
	end

	def guess_limit
		if @guesses == 0 
			@guess = "exceeded"
			@gameover=true
			p "your guesses have expired, better luck next time"
		elsif @dashes.include?("-") == false
			@guess= "completed"
			@gameover=true
			p "you have guess the word correctly, You Won !!!!" 
		end
	end


	def display_dashes
		@dashes= "-" * @word.length
		p @dashes
	end
	
	def clearscreen
	  clear = %x{clear}
	  print clear
	end
	
end

puts "User1: Please Enter the word to be guessed"
word= WordGame.new(gets.chomp)
puts "Enter a small description as a clue"
description=gets.chomp
word.clearscreen
puts "User2: This is your clue: #{description}"
word.display_dashes
while !word.gameover
	puts "Enter your guess, you have #{word.guesses} available"
	let=gets.chomp
	word.guessed_letter(let)
end

#To who ever is evaluating if you are evaluating the tests please read through the document before running the tests thank you:)
