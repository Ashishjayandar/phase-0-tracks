//Psuedo-code
//define a function which takes  a string 
//get the length of the string and store in a variable
//define a loop that goes through each character and stores it in a different variable
//but the loop has to be a decrement loop so that it can store the letters in the reverse order in the new variable
//print the word on the console.


function reverse(str) {
  var len = str.length;
  var reverse_str='';
  for ( var i = len-1; i !=-1; i--){
     reverse_str+=str[i];
  }
  if (str == reverse_str){
  	console.log("The entered word is "+ str+" and it is a palindrome")
  }
	else
  {
  	console.log("The entered word is "+ str+ " the reverse of it is "+ reverse_str);
	}
}

reverse("hello");
reverse("madam");