# Encrypt Program
# Get user_input.
# Find length of user_input.
# Loop through user_input, changing each character or letter into next one in alphabet.
# Store variable.

# Decrypt Program
# Find indexes of user_input.
# Reduce to previous index, print.

def encryption(str_input)

 encrypt = ""
  len = str_input.length
  index1 = 0

 while index1 < len
    encrypt[index1] = str_input[index1].next
    index1 += 1
  end
  return encrypt
end

def decryption(str_encrypted)
index2 = 0
alpha = "abcdefghijklmnopqrstuvwxyz"
len = str_encrypted.length
password = ""

 while index2 < len
    decrypt = str_encrypted[index2]
    x = alpha.index(decrypt)
    y = x - 1
    password[index2] = alpha[y]
    index2 += 1
  end
  return password
end

#Ask the User to choose the encrypt/decrypt program
#Ask the user for the password
#Based on the requested program we run the relevant method, based on the if statements.
#print the result,save and quit.
lp = 0
until lp == 1
#ask the user whether to encrypt or decrypt
puts "Would you like to encrypt or decrypt your password?"
user_choice=gets.chomp

  if user_choice == "encrypt"
    #getting the password from user
    puts "Please enter your password."
    user_input = gets.chomp
    scrambled = encryption(user_input)
    puts "Your encrypted message : #{scrambled}"
    lp += 1
  elsif user_choice == "decrypt"
    #getting the password from user
    puts "Please enter your password."
    user_input = gets.chomp
    decrypted_text = decryption(user_input)
    puts "Your decrypted text: #{decrypted_text}"
    lp += 1 
  else
    puts "Please enter encrypt or decrypt."
  end
end
# This is driver code
# puts encryption("abc")
# puts encryption("zed")
# puts decryption("bcd")
# puts decryption("afe")
# puts decryption(encryption("swordfish"))
#the swordfish works because encryption is in parentheses and the parentheses gets precedence. It is first executed and then the decryption is executed, this is why we get the word
#swordfish back.
