var vikings = require("./viking.js");
var viking_pit = require("./viking.js");

function Pit(v1, v2){

	setTimeout(function(){
		var v1_hlth = v1.health;
		var v2_hlth = v2.health;
		var turn = 1;
			while(turn<=30 && (v1_hlth-v2.strength)>1 && (v2_hlth-v1.strength)>1){
				console.log("Round: "+turn);
				console.log(v1.punch(v2) + " " +v2.punch(v1));

				v1_hlth=v1_hlth-v2.strength;
				v2_hlth=v2_hlth-v1.strength;
				console.log(v1.name+">>"+v1_hlth+" , "+v2.name+">>"+v2_hlth);
				console.log("-----");
				turn ++;
			};
		// console.log(viking_pit);
	}, 3000);
	console.log("FIGHTING...\n\n");
}


Pit(vikings[0], vikings[1]);