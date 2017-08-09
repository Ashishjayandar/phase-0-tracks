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