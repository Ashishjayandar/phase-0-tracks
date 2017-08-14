def ascending_sorting(array)
	len=array.length
	i=1
	while i<len 
		z=array[i]
		j=i-1
		while j>=0 && array[j]>z 
			array[j+1]=array[j]
			j=j-1
		end
			array[j+1]=z
		i=i+1
	end
	return array
end
def descending_sort (insert_sort)
	length=insert_sort.length
	i=1
	while i < length do
		z= insert_sort[i]
		j=i-1
		while j>=0 && insert_sort[j]<z
			insert_sort[j+1]=insert_sort[j]
			j=j-1
		end
		insert_sort[j+1]=z
	i+=1
end
	return insert_sort
end

# puts "Enter the array you would like to sort"
# array=gets.chomp
# puts "Enter if you would like to sort this array ascending or descending"
# usr_input=gets.chomp

i=0
array=[]
while i<100
	array<<rand(100)
end



p descending_sort(array)

