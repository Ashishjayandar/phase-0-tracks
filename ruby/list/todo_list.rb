class TodoList
	attr_accessor :list
	def initialize(arr)
		@list = arr
	end
	def get_items
		@list
	end
	def add_item(item)
		list << item
		 p list
	end
	def delete_item(item)
		@delete_item=list.delete(item)
		#list
	end
	def get_item(id)
		@get_item=list[id]
	end
end


