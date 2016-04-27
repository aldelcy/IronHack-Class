$(document).ready(function(){

	$('.js-submit-artist').click(function(event){
		event.preventDefault();
		var term = $('.js-artist').val();

		$('.js-list').empty();

		$.ajax({
			type: 'GET',
			url: "https://api.spotify.com/v1/search?type=artist&query="+term,
			success: function(data){
				console.log("YAY... works");
				console.log(data);
				console.log(data.artists.items);

				$('.js-form').trigger('reset');

				var mainData = data.artists.items;
				
				mainData.forEach(function(info){
					if(info.images.length <= 0){
						var image = 'no_img.jpg';
					}else{
						var image = info.images[1].url;
					}
					var display = `
						<div class="artists">
							<span class="artist_name">
								<a href="${info.external_urls.spotify}">
									${info.name}
								</a>
							</span><br>

							<img data-artist_id="${info.id}" class="js-albums" style="-webkit-user-select: none;" src="${image}" width="200">
							<br>
						</div>`; 
					$('.js-list').append(display);
				});

				$('.js-albums').click(function(action){
					action.preventDefault();
					var artist_id = $(action.currentTarget).data('artist_id');

					$('.js-album-artist').empty();

					$.ajax({
						type: 'GET',
						url: "https://api.spotify.com/v1/artists/"+artist_id+"/albums",
						success:function(albumData){
							console.log("ALBUM SUCCESS");						
							console.log(albumData.items);

							var mainAlbums = albumData.items;

							mainAlbums.forEach(function(alb){
								var show_album = `
									<h4>${alb.name}</h4>
								`;
								$(".js-album-artist").append(show_album);
							});
						},

						error:function(){
							console.log("ALBUM FAILED");
						}
					});
				});
			},
			error: function(){
				console.log("failed");
				console.log(term)
			}
		});
	});
});