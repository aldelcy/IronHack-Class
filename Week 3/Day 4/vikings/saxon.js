function Saxon(health, strength){
	this.health = health;
	this.strength = strength;
};

var saxons = [];
var random = Math.floor(Math.random()*30);

for(i=0; i<random; i++){
	var health = Math.floor((Math.random()*50) + 20);
	var strength = Math.floor(Math.random()*5);

	var saxon = new Saxon(health, strength);
	saxons.push(saxon);
}

// console.log(saxons);

module.exports = saxons;