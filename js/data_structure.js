var color=["red","blue","green","yellow"];
var name=["buttercup","misty","old_yeller","brownie"];

color.push("purple");
name.push("cupcake");

console.log(color);
console.log(name);

var horse={};
for(var i=0;i<color.length;i++)
{
	horse[name[i]]=color[i];
}
console.log(horse);

function Car(model,color,automatic_shift,max_speed)
{
	this.model=model;
	this.color=color;
	this.automatic_shift=automatic_shift;
	this.max_speed=max_speed;

	this.makecar=function(){console.log("the car is made..!")};
	this.shift=function(){
		if (this.automatic_shift){
			console.log("Anyone can drive this car");
		}
		else{
			console.log("Please learn about the manual shift before driving the car");
		}
	}
}


var mycar= new Car("BMW","black",true,300);
console.log(mycar.model);
//console.log(mycar);
mycar.makecar();
mycar.shift();
