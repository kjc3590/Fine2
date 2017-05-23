
/* jQuery Pre loader
  -----------------------------------------------*/


/* Istope Portfolio
-----------------------------------------------*/
jQuery(document).ready(function($){








	$('.carousel-control').hover(
			function() {
				$('.carousel-indicators').css("display","block");
				$('.carousel-indicators').css("opacity","1");


			}, function() {

				$('.carousel-indicators').css("opacity","0");
			}

	);


	$('.carousel-indicators').hover(
			function() {
				$('.carousel-indicators').css("display","block");
				$('.carousel-indicators').css("opacity","1");


			}, function() {
				$('.carousel-indicators').css("opacity","0");
			}

	);

	$( '.yab' ).hover(
			function() {
				$( '.yab .yab-content' ).css("display","block" );
			}, function() {
				$('.yab .yab-content').css("display","none" );
			}
	);



	var height= 0;
	var limit = $(window).height()+ height;
	var scroll = $(window).scrollTop();
	$("#container").css("margin-bottom",height); //푸터가 가리는 영역만큼 하단여백주기
	if(scroll > limit) {
		$('#footer').css({"position" : "absolute","bottom" : "0"}); //푸터 아이디나 클래스값으로 변경해 사용하세요.
	}
	else {
		$('#footer').css({"position" : "absolute","bottom" : "0"});
	}
	$(window).scroll(function() {
		if(scroll > limit) {
			$('#footer').css({"position" : "absolute","bottom" : "0"});
		}
		else {
			$('#footer').css({"position" : "fixed","bottom" : "0"});
		}
	});





	if ( $('.iso-box-wrapper').length > 0 ) { 

		var $container  = $('.iso-box-wrapper'), 
		$imgs     = $('.iso-box img');

		$container.imagesLoaded(function () {

			$container.isotope({
				layoutMode: 'fitRows',
				itemSelector: '.iso-box'
			});

			$imgs.load(function(){
				$container.isotope('reLayout');
			})

		});

		//filter items on button click

		$('.filter-wrapper li a').click(function(){

			var $this = $(this), filterValue = $this.attr('data-filter');

			$container.isotope({ 
				filter: filterValue,
				animationOptions: { 
					duration: 750, 
					easing: 'linear', 
					queue: false, 
				}                
			});             

			// don't proceed if already selected 

			if ( $this.hasClass('selected') ) { 
				return false; 
			}

			var filter_wrapper = $this.closest('.filter-wrapper');
			filter_wrapper.find('.selected').removeClass('selected');
			$this.addClass('selected');

			return false;
		}); 

	}

});


$(document).ready(function() {







/*	 Nivo lightbox
    -----------------------------------------------

	$('#portfolio .portfolio-thumb .portfolio-overlay .portfolio-item').nivoLightbox({
		effect: 'fadeScale',
	});
*/



	/*종찬지도추가 170227  */   




});

