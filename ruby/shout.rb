include Math



module Shout
  # we'll put some methods here soon, but this code is fine for now!
  # def self.yell_angrily(words)
  #   p words + "!!!" + " :("
  # end
  # def self.yell_happily(msg)
  # 	p "OMG !!! "+ msg + " :)))))))"
  # end

  def noisy(grade)
  	puts "the teacher asked the #{grade} grade students to be quite"
	end
	def calling(name)
		puts "Inspite of the noise, she heard her name '#{name}' from across the hall"
	end
end




# Shout.yell_angrily("I am so confused")
# Shout.yell_happily("I got it now")


class Students
	include Shout
end
class Romance
	include Shout
end

puts Math.sqrt(4)

student=Students.new
student.noisy("5th")
love=Romance.new
love.calling("Ana")
