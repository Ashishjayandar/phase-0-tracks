# Method to create a list

# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # pass items as string into method
  # split string at spaces
  # store items in a hash where key is item and value is quantity
  # set default quantity at 0
  # print the list to the console [can you use one of your other methods here?]
  	# method: print.each to go through and print every item. 
# output: [what data type goes here, array or hash?] hash

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: Using the list to identify the hash, the item name as key value and optional quantity
# as the value, we can add the item to the hash. 
# output: Updated list

# Method to remove an item from the list
# input: List, item name
# steps: Using the list to identify the hash and the item name as key value 
# we can delete an item from the hash. Optional quantity assigned to item name
# will be removed from hash. 
# output: updated list

# Method to update the quantity of an item
# input: list, item name, quantity
# steps: Using the list to identify the hash and item name as the key value, we can
# update the quantity(value) of an item. 
# output: updated list with updated quantity

# Method to print a list and make it look pretty
# input: list
# steps: Incorporate proper context to display/print our shopping list. 
# output: list printed on console. 



def create_list(items)
	list = {}
	items = items.split(' ')
	quantity = 0
	list = Hash.new

	items.each do |item| 
		list[item] = quantity
	end
	list
end



def add_item(list1, item, quantity)
	list1.store(item, quantity)
end



def del_item(list1, item)
	list1.delete_if{|key, value| key == item}
end


def update_quantity(list1, item, quantity)
	list1[item] = quantity
end



def print_list(list1)
	puts "This is our Grocery list!"
	list1.each do |key, value|
		puts "#{value} of #{key}"
	end
end

#list1 = create_list("apples oranges bananas")
#add_item(list1, "pear", 0)
#del_item(list1, "bananas")
#update_quantity(list1, "apples", 3)
#print_list(list1)

list2 = create_list(" ")

add_item(list2, "lemonade", 2)
add_item(list2, "tomatoes", 3)
add_item(list2, "onions", 1)
add_item(list2, "ice-cream", 4)
del_item(list2, "lemonade")
update_quantity(list2, "ice-cream", 1)

print_list(list2)


#1.Pseudo-code helps you to identify each step in your task to be performed, this helps in converting the idea into code that much easier.
#if we could break down out task into simple steps right down to the bricks we need, it also helps us perceive how the code should execute when we do execute it
#2.In this assignment we couldnt use arrays as there were a relationship to be established between the item and quantity. Arrays are not helpful to use for such relationships, hashes
# on the other hand are designed for such situations.
#3.In ruby the methods have implicit return meaning the method returns the last executed item. This means there is no need to use the "return" keyword explicitly.
#In this assignment however in the create_list method we had to give the list again to make sure the method returns the list.
#4.We can pass data structures like arrays and hashes, methods, variables,strings etc., as parameters into a method.
#5. We can pass information between methods using parameters and arguments, we can return a method's result into another method, this is called chaining methods.
#6. I am now comfortable with working with methods, need a little practice with the iteration through the data structures.



