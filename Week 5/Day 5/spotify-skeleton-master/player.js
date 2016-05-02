$(document).ready(function(){

	$('.js-track-submit').click(function(event){
		event.preventDefault();
		$('.more').empty();
		$('.more').removeClass('showing');
		$('.js-bar').prop('value', '');
	  	$('div[name=play-btn]').removeClass('playing');
	  	$('.js-track').trigger('reset');
	  	$('.js-audio').trigger('pause');
	  	$('.js-audio').prop('src', '');


		var track = $('.js-track').val();

		$.ajax({
			url:'https://api.spotify.com/v1/search?q='+track+'&type=track',
			success:function(data){

				console.log(data.tracks.items[0]);
				var result = data.tracks.items[0];
				var other_results = data.tracks.items;

				var track_title = result.name;
				var track_artist = result.artists[0].name;
				var track_img_src = result.album.images[0].url;
				var track_audio_src = result.preview_url;
				var info_btn = `<button class="btn-info">${track_artist}</button>`;
				var artist_id = result.artists[0].href;
				var see_more = `<button class="see_more">see more...</button>`;

				$('.title').text(track_title);
				$('.author').text(track_artist);
				$('.js-image').prop('src', track_img_src);
				$('div[name=play-btn]').prop('class', 'btn-play');
				$('.js-audio').prop('src', track_audio_src);
				$('.js-audio').load();
				$('.js-info-btn').html(info_btn);
				$('.more_btn').html(see_more);

				$('.btn-info').click(function(){
					$('.js-modal').modal("show");
					$.ajax({
						url:artist_id,
						success:function(artist){
							var artist_info = `
								<img src="${artist.images[1].url}" width="200"><br><br>
								<b>Name:</b> ${artist.name}<br>
								<b>Popularity:</b> ${artist.popularity}<br>
								<b>Followers:</b> ${artist.followers.total}<br>
							`;
							$('.modal_title').text(track_artist+"'s Info: ");
							$('.js-artist-info').html(artist_info);
						},
					});
				});
				

				$('.btn-play').on('click', function(){
					$('div[name=play-btn]').toggleClass('playing');

					if(($('div[name=play-btn]').prop('class')).indexOf("playing") >= 0){
						$('.js-audio').trigger('play');
					}else{
				 		$('.js-audio').trigger('pause');
					}
				});

				function printTime () {
					var audio = document.querySelector('audio');
					var current = $('.js-audio').prop('currentTime');
					var end = audio.seekable.end(audio);

	  				console.debug(current);
	  				$('.js-bar').prop('value', current);
	  				$('.js-bar').prop('max', end);

	  				if(current === end){
	  					$('.js-bar').prop('value', '0');
	  					$('div[name=play-btn]').removeClass('playing');
	  				}
	  			}
	  			$('.js-audio').on('timeupdate', printTime);


	  			$('.see_more').click(function(){
					$('.more').toggleClass('showing');

					if(($('.more').prop('class')).indexOf("showing") >= 0){
						$('.see_more').text('see less...');

						other_results.forEach(function(other_track){
							var other_html = `
								<img src="${other_track.album.images[0].url}" width="200">
							`;

							$('.more').append(other_html);
						});
					}else{
						$('.see_more').text('see more...');
						$('.more').empty();
					}
					
				});	
			},
			error:function(error){

			}
		});
	});
});