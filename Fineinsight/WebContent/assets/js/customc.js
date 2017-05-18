jQuery(window).on('load', function(){
	  //preloader
    $("#status").fadeOut(); // will first fade out the loading animation
	   $("#preloader").delay(800).fadeOut("slow"); // will fade out the white DIV that covers the website.


	   if ($(window).width() > 991){
			 $('.menusuit .menubutton').css('color','white');
			 $('.menusuit').css('background','rgba(128, 128, 128, 0.81)');

			 
			
			/*
			 document.getElementById("mainban").style.marginLeft = "60px";*/
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