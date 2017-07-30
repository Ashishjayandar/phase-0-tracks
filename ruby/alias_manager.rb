#Pseudo-code
#The method to be defined for taking an array as an argument, with the each item of array it needs to change the vowels into the next vowel
#Then it needs to check for each consonant and change it to the next consonant, it needs to make sure the letter changed into isn't a vowel, if so
#it needs to change it to the next letter which is a consonant.
#The method should also change the first name and last name, and make the array into a string and return just the string.
#The program must accept first name and last name from the user and scramble the name to give a new name, it should also continue to do so till the user types "quit".






#method defined
def name_scrambler(arr)
  index=arr.length
  id=0
  while id < index do   #works on the first name separately and the last name separately, also works if you have multiple first name and last names
      str=arr[id]
      str=str.downcase
      len=str.length
      str=str.tr('aeiou','eioua')			#vowels changed
      i=0
      while i<len do
          case str[i]
            when 'a'
                  i+=1
            when 'e'
                  i+=1
            when 'i'
                  i+=1
            when 'o'
                  i+=1
            when 'u'
                  i+=1
            else
              str[i]=str[i].next			#consonants changed
              str[i]=str[i].tr('aeiou', str[i].next) 	#consonants checked for vowel if so changed
                  i+=1
          end
      end
      str=str.capitalize		#name changed back to the naming style
      arr[id]=str
      id +=1
  end
  arr=arr.reverse
  arr=arr.join(" ")			#the new scrambled name made
  return arr
end


#program
user_input=""
while  user_input !="quit" do 	#loop for getting multiple inputs
puts "Please enter your first name"
first_name=gets.chomp
puts "Please enter your last name"
last_name=gets.chomp

full_name= first_name +" "+ last_name

name_to_scramble=[]

name_to_scramble=full_name.split(' ')
 #name_to_scramble
scrambled_name=name_scrambler(name_to_scramble) 		#method invoked
puts"#{full_name} is now #{scrambled_name}"  
puts "Would you like to continue? you can stop by typing quit"
user_input=gets.chomp
end