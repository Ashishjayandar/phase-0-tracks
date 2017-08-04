class TodoList
	attr_accessor :list
	def initialize(arr)
		@list = arr
	end
	def get_items
		@list
	end
	def add_item
	end
	def delete_item
	end
	def retrive_item
	end
end

# list = TodoList.new(["do the dishes", "mow the lawn"])
# p list.get_items