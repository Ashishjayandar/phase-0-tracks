# Search Array pseudo code
#Define a method for searching through the array
#Method should take 2 arg an array and a number
#return the index of the array

#fib pseudo code
#first get the number of terms from the user
#define a method to create the Fibonacci series
#return the array 

#sorting Algorithm
#First find the total length of the list or array 
#Loop through the entire array and make sure the items are in order
#The arrangement is to be done by comparing the current element to all the previous elements to sort them.
#Once we have looped through the entire array or list we should have a sorted array at the end.


def search_array(arr,x)
	len= arr.length
	i=0
	while i < len do
		if arr[i] == x
				return i
				break
		end
		i+=1
	end
end

p search_array([1,2,3],3)


def fib(y)
	num=[0,1]
	j=2
	while j < y do
		num[j]=num[j-1] + num[j-2]
		j+=1
	end
	return num
end

p fib(10)

# insert_sort=[4,3,5,2,1]

# def sorting(insert_sort)
# 	length=insert_sort.length
# 	i=1
# 	while i < length do
# 	j=0
# 		while j < i
# 			if insert_sort[j+1] < insert_sort[j]
# 			#	insert_sort[j] = insert_sort[j+1]
# 			z= insert_sort[j]
# 			insert_sort[j]=insert_sort[j+1]
# 			insert_sort[j+1]=z
# 			end
# 			j+=1
# 		end
# 		i+=1
# 	end
# 	return insert_sort
# end


# p sorting(insert_sort)




def sorting (insert_sort)
	length=insert_sort.length
	i=1
	while i < length do
		z= insert_sort[i]
		j=i-1
		while j>=0 && insert_sort[j]>z
			insert_sort[j+1]=insert_sort[j]
			j=j-1
		end
		insert_sort[j+1]=z
	i+=1
end
	return insert_sort
end

p sorting([2,5,3,1,4])

















