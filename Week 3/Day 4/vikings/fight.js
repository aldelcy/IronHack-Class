function Viking(name, health, strength){
	this.name = name;
	this.health = health;
	this.strength = strength;
}

Viking.prototype.punch = function(opponent){

	var player_name = this.name;
	var player_hlth = this.health;
	var player_str = this.strength;
	var opponent_hlth = opponent.health;

	setTimeout(function(){
		for(var i=0; i<=30; i++){
			while(player_hlth>1 && opponent_hlth>1){
				console.log(player_name+'=> '+player_hlth+' - '+opponent.name+'=> '+opponent_hlth);
				player_hlth=player_hlth-opponent.strength;
				opponent_hlth=opponent_hlth-player_str;	
			};
		};
		// compare jack vs bob, whichever is higher wins
	}, 2000);
	console.log("FIGHTING..."+this.name+" vs "+opponent.name+":");

};

var vkng_1 = new Viking('Jack', 100, 5);
var vkng_2 = new Viking('Bob', 90, 7);
var vkng_3 = new Viking('Joel', 50, 10);
var vkng_4 = new Viking('Gilly', 90, 5);
var vkng_5 = new Viking('Beard', 80, 8);


vkng_1.punch(vkng_2);



// var vkng_6 = new Viking('Tom', 70, 80);
// var vkng_7 = new Viking('Josh', 100, 100);
// var vkng_8 = new Viking('Neimar', 60, 20);
// var vkng_9 = new Viking('Daniel', 80, 100);
// var vkng_10 = new Viking('Dan', 90, 80);


// , vkng_6, vkng_7, vkng_8, vkng_9, vkng_10







//====================================




function Pit(v1, v2){

	setTimeout(function(){
		var v1_hlth = v1.health;
		var v2_hlth = v2.health;
		for(i=0; i<=30; i++){
			while(v1_hlth>1 && v2_hlth>1){
				console.log(v1.name+' => '+v1_hlth+' - '+v2.name+' => '+v2_hlth);
				v1_hlth=v1_hlth-v2.strength;
				v2_hlth=v2_hlth-v1.strength;	
			};
		};
		console.log(viking_pit);
	}, 3000);
	console.log("FIGHTING...");

}


Pit(vikings[0], vikings[1]);