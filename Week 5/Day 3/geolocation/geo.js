if("geolocation" in navigator){
	console.log("Geolocation is available");

	navigator.geolocation.getCurrentPosition(displayPosition, showPositionError);
}else{
	alert("NOT vailable");
}

function displayPosition(data){
		console.log("Got Position");
		console.log(data);
		var lati = data.coords.latitude ;
		var long = data.coords.longitude ;

		var html = `latitude: ${lati}<br>longitude: ${long}<br><br>`;
		var map = `<img style="-webkit-user-select: none;" width="600" src="http://maps.googleapis.com/maps/api/staticmap?size=1000x300&zoom=16&center=${lati},${long}">`;

		$('.location').append(html)
		$('.location').append(map)
}

function showPositionError(error){
		console.log("Failed to get position:( ");
		console.log(error);
}