var fs = require('fs');

function fileActions(err, file){ 
    if (err) {
        throw err;
    }
    var ep = JSON.parse(file);
    var srt_ep = ep.sort(function(a, b){
  			return a.episode_number-b.episode_number
		});

		function eliminate(num){
			return num.rating < 8.5;
		};
		
		var elim_rating = srt_ep.filter(eliminate);

		for (var i = 0; i < elim_rating.length; i++){
			console.log("Title: "+ep[i].title+" Episode: "+ep[i].episode_number);
		    console.log(ep[i].description);
		    		
		    var rate_round = Math.round(ep[i].rating);
		    console.log("Rating: "+ep[i].rating+" "+("*".repeat(rate_round))+"\n\n");
		};
};

fs.readFile("got.json", 'utf8', fileActions);