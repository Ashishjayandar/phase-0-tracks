class Tasklist
	attr_accessor :due_date
	attr_reader :name
	def initialize(name,due_date)
		@name=name
		@due_date=due_date
		@location_tasks={}
	end
	def add_locations(location,tasks)
		if @location_tasks.include?(location)
			puts "The location already exists"
		else 
			@location_tasks[location]=tasks	
	end
	def add_task(task,location)
		if @location_tasks.include?(location)
			if @location_tasks[location].include?(task)
				puts "the task already exists in the location"
			else
				@location_tasks[location]<<task
			end
		else
			@location_tasks[location]=task
		end
	end
	def cross_off(task,location)
		if @location_tasks[location].include?(task)
				@location_tasks[location].delete(task)
		else
				puts "the location doesn't have the task"
		end
	end
	def print_list
		@location_tasks.each do |key,value|
			puts "At #{key}"
			value.each do |x|
				puts "-#{x}"
			end
		end
	end
	def is_past_due
		current_day=Time.now.strftime("%A")

		
	end

end