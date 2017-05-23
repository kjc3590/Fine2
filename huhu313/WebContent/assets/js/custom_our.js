jQuery(window).on('load', function(){
	  //preloader
    $("#status").fadeOut(); // will first fade out the loading animation
	   $("#preloader").delay(800).fadeOut("slow"); // will fade out the white DIV that covers the website.
	   
	   
	   
	   $('.particles-js-canvas-el').css('width','38%');
	   
	   $('.particles-js-canvas-el').css('height','38%');
	   
	   
	   $('.particles-js-canvas-el').css('top','13.5%');
	   
	   $('.particles-js-canvas-el').css('left','2%');
	   
	   
	   
		if ($(window).width() > 1199){
			 $('.menusuit .menubutton').css('color','rgba(99, 101, 105, 0.74)');
		
		 /*document.getElementById("nodap").style.marginLeft = "60px";*/
		
			 	
		
	 }
	   
});

$(document).ready(function(){  
	
	
	
	
	/*var jongchanakcma = 0;
	
	$('.owl-theme .owl-controls .owl-page').click(function(){
		
		if(jongchanakcma ==0){
			$('.about').css('background','url(../images/consulting.png) no-repeat left center fixed');
			jongchanakcma = 1;
		}else{
			$('.about').css('background','url(../images/solution.png) no-repeat left center fixed');
			jongchanakcma = 0;
		}
		
	});*/
	
	//pop up porfolio
	$('.portfolio-image .igrid a').magnificPopup({
		type: 'image',
		gallery: {
			enabled: true
		}
	// other options
	});
/*	
	



    // Service Item Tab Slider
    $('.service-item-tab').on('click', function() {
        $('.service-item-tab').removeClass('active');
        $(this).addCass('active');
    });
    
    //scrollReveal js Init
    window.sr = ScrollReveal({ duration: 800 });
    sr.reveal('.foo');
   */
	

	//owl carousel
	$('.owl-carousel').owlCarousel({
		autoPlay: 10000, //Set AutoPlay to 3 seconds
		
		items : 2,
		itemsDesktop : [1199,2],
		itemsDesktopSmall : [979,2],
		itemsTablet : [768,2],
		itemsMobile : [479,1],
		
		// CSS Styles
		baseClass : "owl-carousel",
		theme : "owl-theme"
	});
    
	
});