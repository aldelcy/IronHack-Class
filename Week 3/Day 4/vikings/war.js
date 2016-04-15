var vikings = require("./viking.js");
var saxons = require("./saxon.js");


function startWar(){

	var starting_vikings = vikings.length;

	setTimeout(function(){
		console.log("The early sun rises to the east...");
	}, 6000);
	setTimeout(function(){
		console.log("It's rays illuminate the misty fog.");
	}, 9000);
	setTimeout(function(){
		console.log("everything is calm...");
	}, 12000);
	setTimeout(function(){
		console.log("...too calm.");
	}, 15000);
	setTimeout(function(){
		console.log("The saxons here a distant cry off the horizon...\n");
	}, 17000);

	setTimeout(function(){
		for(i=0; i<vikings.length; i++){
			console.log(vikings[i].battleCry());
		};
	}, 20000);

	setTimeout(function(){
		console.log("\nThe battle cries becomes louder and LOUDER.");
	}, 23000);

	setTimeout(function(){
		console.log("\nThe Battle begins...\n");
	}, 26000);

	setTimeout(function(){
		var a = 0;

		for(var y=0; y<saxons.length; y++){

			console.log(vikings[a].name+"["+vikings[a].health+"] fights Saxons_"+(y+1)+"["+saxons[y].health+"]");
		
			while(vikings[a].health>0 && saxons[y].health>0){
				vikings[a].health = vikings[a].health - saxons[y].strength;
				saxons[y].health = saxons[y].health - vikings[a].strength;
				// console.log(vikings[a].name+">>"+vikings[a].health+",  Saxons_"+(y+1)+">>"+saxons[y].health);
			};

			if(saxons[y].health<=0){ 
				// saxons[y].health = 0;
				console.log("Saxons_"+(y+1)+" is dead;");
				// saxons.splice(y, 1);
			};
			if(vikings[a].health<=0){ 
				vikings[a].health = 0;
				console.log(vikings[a].name+" >> "+vikings[a].health+" is dead; ================ Man down ============= ");
				vikings.splice(a, 1);
			};

			// console.log(vikings[a].name+">>"+vikings[a].health+",  Saxons_"+(y+1)+">>"+saxons[y].health);

			// if (vikings[a].health>saxons[y].health){ console.log(vikings[a].name+" WINS"); }else{ console.log("Saxons_"+(y+1)+" WINS"); }
			console.log(vikings.length+" Vikings left in battle.\n");
			// console.log(saxons.length+" Saxons left in battle.\n");


			a++;
			if(a>=(vikings.length)){ a = 0; };
			if(vikings.length===0){ break; };
		};

		if(vikings.length===0){
			console.log("\n==>> The Vikings have lost, the Saxons Protected their village.");
		
		}else if(vikings.length<starting_vikings){
			console.log("\n==>> Although they lost some commarades during the Battle, the Vikings emerged VICTORIOUS.");

		}else{
			console.log("\n==>> The Vikings emerged VICTORIOUS. No one was lost during the battle. They all returned to their family with giant bags of loot.");
		}
	}, 29000);

	

};


console.log("During their travel, the Vickings spot a village of "+saxons.length+" Saxons.\nThey've decided to camp for the night to rest and attack at dawn.\n");

startWar();

// console.log(vikings);
// console.log("VS");
// console.log(saxons);