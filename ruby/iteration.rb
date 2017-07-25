#Release 0
def sample_method
	puts "This is before executing the block"
	yield("ash", "mel","20","21")
	puts "This is after executing the	block"
end

sample_method{|name1,name2,age1,age2| puts "The names are #{name1}, #{name2} and the age are #{age1},#{age2}"}


#For Release 1
articles= ["umbrella", "pen","apple","oranges","books"]

prices = {
	umbrella: 10,
	pen: 1,
	apple: 1,
	oranges: 2,
	books: 20
}

articles.each do |article|
	puts "you can buy #{article}"
end

prices.each do |item, price|
	puts "Buy a #{item} for $#{price}"
end


puts "before modification#{articles}"

 articles.map! do |article|
	article.upcase

end

puts "After modification #{articles}"

#Array and Hash for release 2
alpha=["a","b","c","d","e"]
numbers=[1, 2, 3, 4, 5]

#Array Method-3
numb=numbers.select{|num| num.even?}
p numb
#Array Method-4
art= numbers.take_while{|num| num < 4}
p art
#Hash Method-3
prc=prices.select{|k,v| v > 10}
p prc
#Hash Method-4
priced=prices.reject {|k,v| v > 10}
p priced
#Array Method-1
numbers.delete_if{|num| num<3}
p numbers
#Array Method-2
numbers.keep_if{|num| num > 4}
p numbers
#Hash Method-1
prices.delete_if{|key, value| value > 10}
p prices
#Hash Method-2
prices.keep_if{|key, value| key.length < 6}
p prices


