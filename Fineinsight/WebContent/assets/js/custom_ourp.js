jQuery(window).on('load', function(){
	//preloader
	$("#status").fadeOut(); // will first fade out the loading animation
	$("#preloader").delay(800).fadeOut("slow"); // will fade out the white DIV that covers the website.

	$('.menusuit .menubutton').css('color','black');

	if ($(window).width() > 1199){
	}else {
		$('.menusuit').css('background','white');
	}
});
/* Istope Portfolio
-----------------------------------------------*/
jQuery(document).ready(function($){

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
$(document).ready(function(){  


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

	/* Nivo lightbox
	    -----------------------------------------------*/
	$('#portfolio .iso-box a').nivoLightbox({
		effect: 'fadeScale',
	});

});