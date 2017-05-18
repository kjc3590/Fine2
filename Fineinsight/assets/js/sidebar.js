




function openNav() {
		
			 document.getElementById("mainban").style.marginLeft = "250px";
	
    document.getElementById("mySidenav").style.width = "250px";
   
    document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
    document.getElementById("mainban").style.opacity = "0.35";
  
 
   /* document.getElementByClassName(".sidenav").style.opacity = "1";*/
}

/* Set the width of the side navigation to 0 and the left margin of the page content to 0, and the background color of body to white */
function closeNav() {

	if ($(window).width() > 1320){
	
		 document.getElementById("mainban").style.marginLeft = "60px";
 }else{
	 document.getElementById("mainban").style.marginLeft = "0";
 }
    document.getElementById("mySidenav").style.width = "0";
    
    document.getElementById("mainban").style.opacity = "1.0";
    document.body.style.backgroundColor = "transparent";
}



function changeNav() {
    document.getElementById("menusuit1").style.backgroundColor = "rgba(133,133,133,0.9)";
    document.getElementById("menubutton1").style.color = "black";
    
}






