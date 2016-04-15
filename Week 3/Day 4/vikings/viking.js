function Viking(name, health, strength){
	this.name = name;
	this.health = health;
	this.strength = strength;
}

Viking.prototype.punch = function(opponent){

	var player_health = this.health;
	var player_strenght = this.strength;
	var opponent_health = opponent.health;
	return this.name+" punches "+opponent.name+".";

	// opponent_health = opponent_health - this.strength;
};

Viking.prototype.battleCry = function(){
	return "WOLO-WOLO-WOLO-WOLO-WOLO-WOLO-WOLO-WOLO";
};

var vkng_1 = new Viking('Jack', 100, 5);
var vkng_2 = new Viking('Bob', 90, 7);
var vkng_3 = new Viking('Joel', 50, 10);
var vkng_4 = new Viking('Gilly', 90, 5);
var vkng_5 = new Viking('Beard', 80, 8);
var vkng_6 = new Viking('Tom', 70, 8);
var vkng_7 = new Viking('Josh', 100, 10);
var vkng_8 = new Viking('Neimar', 60, 2);
var vkng_9 = new Viking('Daniel', 80, 10);
var vkng_10 = new Viking('Dan', 90, 8);

var vikings = [];
vikings.push(vkng_1, vkng_2, vkng_3, vkng_4, vkng_5, vkng_6, vkng_7, vkng_8, vkng_9, vkng_10);

var viking_pit = [];
for(var i=0; i<vikings.length; i++){
	viking_pit.push(vikings[i]);
};

// vkng_1.punch(vkng_2);
// vkng_1.punch(vkng_2);

// console.log(viking_pit);

module.exports = vikings;
module.exports = viking_pit;