// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
PokemonApp.Pokemon = function (pokemonUri) {
  this.id = PokemonApp.Pokemon.idFromUri(pokemonUri);
};
PokemonApp.PokemonEvolutions = function (id, info) {
  this.id = id;
  this.info = info;
};

PokemonApp.PokemonEvolutions.prototype.render = function () {
  console.log("Rendering evolutions for: #" + this.id);

  // You will need some AJAX calls!
};
PokemonApp.Pokemon.prototype.render = function () {
  console.log("Rendering pokemon: #" + this.id);

  var self = this;

  $.ajax({
    url: "/api/pokemon/" + this.id,
    success: function (response) {
      self.info = response;

      types = self.info.types

      console.log(self.info);
      
      console.log("Pokemon name: " + self.info.name);
      console.log("Pokemon number: " + self.info.pkdx_id);
      // console.log("Pokemon height: " + self.info.height);
      // console.log("Pokemon weight: " + self.info.weight);

      $(".js-pkmn-name").text(self.info.name);
      $(".js-pkmn-number").text(self.info.pkdx_id);
      $(".js-pkmn-height").text(self.info.height);
      $(".js-pkmn-weight").text(self.info.weight);
      $(".js-pkmn-hp").text(self.info.hp);
      $(".js-pkmn-attack").text(self.info.attack);
      $(".js-pkmn-defense").text(self.info.defense);
      $(".js-pkmn-sp_atk").text(self.info.sp_atk);
      $(".js-pkmn-sp_def").text(self.info.sp_def);
      $(".js-pkmn-speed").text(self.info.speed);

      $(".js-pkmn-types").empty();

      types.forEach(function(item){
          type = `${item.name}<br>`;
          console.log("type: " + type);
          $(".js-pkmn-types").append(type);
      });

      $(".js-pokemon-modal").modal("show");

        $.ajax({
          url:'http://pokeapi.co/api/v2/pokemon-form/'+(self.id),
          success:function(data){
            // console.log('Sprites : '+data.resource_uri)
            console.log(data);
            console.log(data.sprites.front_default);
            var image = `<img src="${data.sprites.front_default}" width="200" >`;

            $(".js-image").html(image);
          },
          error:function(){
            console.log("ERROR")
          }
        });
    }
  });
};


PokemonApp.Pokemon.idFromUri = function (pokemonUri) {
  var uriSegments = pokemonUri.split("/");
  var secondLast = uriSegments.length - 2;
  return uriSegments[secondLast];
};

$(document).ready(function(){
	$('.js-show-pokemon').click(function(event){
		var $button = $(event.currentTarget);
		var pokemonUri = $button.data("pokemon-uri");

		var pokemon = new PokemonApp.Pokemon(pokemonUri);
		pokemon.render();
	});
});