$(document).ready(function(){

	$('.js-ajax').click(function(){
		$.ajax({
			url: "https://ironhack-characters.herokuapp.com/characters",
			success: function(theData){
				console.log("YAY it works");
				console.log(theData);
				console.log(theData.length);

				theData.forEach( function(oneCharacter){
					var html = `<li> 
							<p>Name: ${oneCharacter.name}</p>
							<p>Occupation: ${oneCharacter.occupation}</p>
							<p>Weapon: ${oneCharacter.weapon}</p>
							</li>`;

					$('.js-list').append(html);
				});

			},
			error: function(){
				console.log("NAY IT DOES NOT");
			}
		});
	});

	$('.js-add-character').click(function(){

		var character = {
			name: $('.name').val(),
			occupation: $('.occupation').val(),
			weapon: $('.weapon').val(),
			debt: true
		};

		$.ajax({
			type: 'POST',
			url: "https://ironhack-characters.herokuapp.com/characters",
			data: character,

			success: function(Data){
				console.log("YAY character has been added");


			},
			error: function(){
				console.log("No character has not been added");
			}
		});
	});

});