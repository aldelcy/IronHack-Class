function Viking(name, health, strength){
	this.name = name;
	this.health = health;
	this.strength = strength;
}

Viking.prototype.punch = function(opponent){

	player_health = this.health;
	player_strenght = this.strength;
	opponent_health = opponent.health;
	return this.name+" punches "+opponent.name+".";

	// opponent_health = opponent_health - this.strength;
};

var vkng_1 = new Viking('Jack', 100, 5);
var vkng_2 = new Viking('Bob', 90, 7);
var vkng_3 = new Viking('Joel', 50, 10);
var vkng_4 = new Viking('Gilly', 90, 5);
var vkng_5 = new Viking('Beard', 80, 8);

var vikings = [];
vikings.push(vkng_1, vkng_2, vkng_3, vkng_4, vkng_5);

var viking_pit = vikings;

// vkng_1.punch(vkng_2);
// vkng_1.punch(vkng_2);
// vkng_1.punch(vkng_2);
// vkng_1.punch(vkng_2);
// vkng_1.punch(vkng_2);
// vkng_1.punch(vkng_2);
// vkng_1.punch(vkng_2);
// vkng_1.punch(vkng_2);
// vkng_1.punch(vkng_2);
// vkng_1.punch(vkng_2);

// console.log(viking_pit);

module.exports = vikings;
module.exports = viking_pit;