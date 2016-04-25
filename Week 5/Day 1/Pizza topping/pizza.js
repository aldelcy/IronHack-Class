// Write your Pizza Builder JavaScript in this file.


$(document).ready(function(){

	var active = "active";
	var price = 13;
	$('strong').html('$'+price);

	// -- Price Change --

	function changePrice(button,ing_price){

		if($(button).hasClass('active')){
			price = price + ing_price;	
			$('strong').html('$'+price);
		}else{
			price = price - ing_price;	
			$('strong').html('$'+price);
		}
	};

	// Buttons

	$('.btn-pepperonni').click(function(){
		$('.pep').toggle();
		$('.btn-pepperonni').toggleClass(active);
		$('.top-pep').toggle();

		var ing_price = 1;
		changePrice('.btn-pepperonni', ing_price);
	});

	$('.btn-mushrooms').click(function(){
		$('.mushroom').toggle();
		$('.btn-mushrooms').toggleClass(active);
		$('.top-mush').toggle();

		var ing_price = 1;
		changePrice('.btn-mushrooms', ing_price);
	});

	$('.btn-green-peppers').click(function(){
		$('.green-pepper').toggle();
		$('.btn-green-peppers').toggleClass(active);
		$('.top-gpep').toggle();
		
		var ing_price = 1;
		changePrice('.btn-green-peppers', ing_price);
	});

	// sauce + crust

	$('.btn-sauce').click(function(){
		$('.sauce').toggleClass('sauce-white');
		$('.btn-sauce').toggleClass(active);
		$('.top-wsauce').toggleClass('hide');

		var ing_price = 3;
		changePrice('.btn-sauce', ing_price);
	});

	$('.btn-crust').click(function(){
		$('.crust').toggleClass('crust-gluten-free');
		$('.btn-crust').toggleClass(active);
		$('.top-gcrust').toggleClass('hide');

		var ing_price = 5;
		changePrice('.btn-crust', ing_price);
	});

	// price print
	
});