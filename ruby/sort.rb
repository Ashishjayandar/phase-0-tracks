def sorting (insert_sort)
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

p sorting([2,5,3,1,4])