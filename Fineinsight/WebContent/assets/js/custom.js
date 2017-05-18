jQuery(window).on('load', function(){
	  //preloader
    $("#status").fadeOut(); // will first fade out the loading animation
	   $("#preloader").delay(800).fadeOut("slow"); // will fade out the white DIV that covers the website.
		if ($(window).width() > 1320){
			
			/* document.getElementById("mainban").style.marginLeft = "60px";*/
	 }
	   
});

$(document).ready(function(){  
	
	
	
	
	//typed js
	$(".typed").typed({
		strings: ["Web/SW Mobile UX | App \Brand design | Social Media Planning"],
		typeSpeed: 100,
		backDelay: 900,
		// loop
		loop: true
	});
	
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
	
	//pop up porfolio
	$('.portfolio-image li a').magnificPopup({
		type: 'image',
		gallery: {
			enabled: true
		}
	// other options
	});
	
	
	new WOW().init();
	

    // Service Item Tab Slider
    $('.service-item-tab').on('click', function() {
        $('.service-item-tab').removeClass('active');
        $(this).addCass('active');
    });
    
    //scrollReveal js Init
    window.sr = ScrollReveal({ duration: 800 });
    sr.reveal('.foo');
   
	
    var mapCanvas = document.getElementById('map-canvas');
    var mapProp = {
      center: new google.maps.LatLng(37.543917, 127.061252),
      zoom:15,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    
    var map = new google.maps.Map(mapCanvas,mapProp);
    
  // Create a marker and set its position.
      var marker = new google.maps.Marker({
      	  
     
        position: new google.maps.LatLng(37.543917, 127.061252),
        
        title: '이안 베스트 !'
      });

  marker.setMap(map);


  setTimeout(function(){

      google.maps.event.trigger(map,'resize');
  },100);
    

    
	
});