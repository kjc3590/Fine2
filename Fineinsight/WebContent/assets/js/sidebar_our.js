




function openNav() {
	if ($(window).width() > 991){
			 document.getElementById("nodap").style.marginLeft = "280px";
			 document.getElementById("menusuit1").style.opacity = "0";
	}
	
    document.getElementById("mySidenav").style.width = "280px";
   
    document.getElementById("mySidenav").style.background = "black";
    document.body.style.background = "rgba(13, 19, 22, 1)";
    
    $('.menusuit').css('background','transparent');
   
    $('.inner-padding').css('pointer-events','none');
    $('#particles-js2').css('display','none');
    
   /* $('.menusuit').css('background','transparent');*/
   /* document.body.style.opacity = "transparent"*/
   /* document.getElementById("particles-js").style.display = "block";*/
    
/*    document.getElementById("particles-js").style.background = "linear-gradient(to right, rgb(27, 24, 24),    rgba(4, 18, 23, 0.89))";*/
  
    document.getElementById("nodap").style.opacity = "0.25";
  
 
   /* document.getElementByClassName(".sidenav").style.opacity = "1";*/
}

/* Set the width of the side navigation to 0 and the left margin of the page content to 0, and the background color of body to white */
function closeNav() {

	if ($(window).width() > 991){
	
		 document.getElementById("nodap").style.marginLeft = "60px";
		 document.getElementById("menusuit1").style.opacity = "1";
 }else{
	 document.getElementById("nodap").style.marginLeft = "0";
 }
 
    document.getElementById("mySidenav").style.width = "0";
    $('.inner-padding').css('pointer-events','all');
    $('#particles-js2').css('display','block');
/*    $('.menusuit').css('background','white');*/
    document.body.style.background = "transparent";
  /*  document.getElementById("particles-js").style.background = "linear-gradient(to right, rgb(33, 53, 74), rgba(25, 64, 78, 0.9))";*/
 /*   document.getElementById("particles-js").style.display = "none";*/
    document.getElementById("nodap").style.opacity = "1.0";

}



function changeNav() {
    document.getElementById("menusuit1").style.backgroundColor = "rgba(133,133,133,0.9)";
    document.getElementById("menubutton1").style.color = "black";
    
}






