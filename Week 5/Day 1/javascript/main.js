console.log("Hello");

$(document).on("ready", function(){

	$(".button_1").on("click", function(){
		$('.wrapper').not(".button_1").fadeToggle(1000);
	});

	$(".button_2").on("click", function(){
		$('div[id=unicorn]').toggleClass('unicorn-mode');
	});


});