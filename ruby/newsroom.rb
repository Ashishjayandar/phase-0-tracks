class Newsroom
	attr_reader :name
	attr_accessor :budget
	def initialize(nam,budget)
		@name=nam
		@budget=budget
		@reporters={}
		@total_salary=0
		@requested_reporters=[]
	end
	def add_reporter(rep_name,skills)
		#has_budget(rep_name)
			if @reporters.include?(rep_name)
					p "reporter already hired cannot be hired again"
			elsif has_budget(rep_name)
			@reporters[rep_name]=skills 
			else
				puts "we cant affort this person"
		end
	end
	def salary_for(repo_name)
		len=repo_name.length
		 salary=len*10000
	end
	def total_salaries
		@reporters.each do|key,value|
			@total_salary= @total_salary + salary_for(key)
		end
		 @total_salary
	end
	def has_budget(repo_name)
		new_sal=salary_for(repo_name)
		limit=new_sal+@total_salary
		 #p limit
		if limit > @budget
			return false
		else
				return true
		end
	end
	def friendly_print
		puts "Welcome to the #{@name} Newsroom!\n"
		puts "Your reporting team is: "
		@reporters.each do |key,value|
			str=value.join(", ")
			puts"-#{key}, #{str}"
		end
	end
	def newsroom_breakout_instructions(skill)
			@reporters.each do |key,value|
				if value.include?(skill)
					@requested_reporters << key
				end
			end
		p @requested_reporters
	end
end


c=Newsroom.new("CNN",500_000)
c.add_reporter("Anderson Cooper",["Good Researcher","communications skills","hardworker","politics"])
c.add_reporter("Wolf Blitzer",["sportsguy","good editor","politics"])
c.add_reporter("Gorge damsel",["writer","sports"])
#c.salary_for("Rachel Maddow")
c.total_salaries

#c.add_reporter("Rachel Maddow",["damn good"])

#c.friendly_print

c.newsroom_breakout_instructions("politics")

