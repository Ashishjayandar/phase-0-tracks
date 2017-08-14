function longeststring(array){
	var long="";
	var len=array.length
	for (var i = 0; i < len; i++)
	{
		if (array[i].length > long.length)
		{
			long=array[i];

		}
	} 
	console.log("the longest string in the given array is "+long);
	return long;
};
function compare_objects(obj1,obj2){
	for(x in obj1)
	{
		if (obj1[x] == obj2[x])
		{
			return true;
		}
		else
		{
			return false;
		}
	}
};
function randomword(num){
	var alpha="abcdefghijklmnopqrstuvwxyz";
	var test="";
	var array=[];
	for(var i=0;i<num;i++)
	{	
		var k=Math.floor(Math.random()*10)+1;
		test = "";
	 	for(var j=0;j<k;j++)
		{
			test+=alpha.charAt(Math.floor(Math.random()*alpha.length));
		}
		array.push(test);
	}
	return array;
};

array=randomword(10);
console.log(array);
longeststring(array);
var dog1={name: "Spot", age: 54}
var dog2={name: "Spot", gooddog:true}

console.log(compare_objects(dog1,dog2));
// longeststring(["long phrase","longest phrase","longer phrase"]);

