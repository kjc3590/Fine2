jQuery(window).on('load', function(){
	  //preloader
    $("#status").fadeOut(); // will first fade out the loading animation
	   $("#preloader").delay(800).fadeOut("slow"); // will fade out the white DIV that covers the website.
	   $('.sidenav .closebtn').css('opacity','0');
	   if ($(window).width() > 1320){

			
		/*	 document.getElementById("content-wrap").style.marginLeft = "60px";*/
	 }
	   
});

$(document).ready(function(){  
	
	
	

	//owl carousel
	$('.owl-carousel').owlCarousel({
		autoPlay: 10000, //Set AutoPlay to 3 seconds
		
		items : 1,
		itemsDesktop : [1199,1],
		itemsDesktopSmall : [979,1],
		itemsTablet : [768,1],
		itemsMobile : [479,1],
		
		// CSS Styles
		baseClass : "owl-carousel",
		theme : "owl-theme"
	});
	



    
	
});