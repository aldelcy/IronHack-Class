function sleep(seconds){
	setTimeout(function(){
		console.log("After Sleep");
	}, seconds* 1000);
	console.log('Sleeping');
} 

console.log('Before Sleep');
sleep(5);