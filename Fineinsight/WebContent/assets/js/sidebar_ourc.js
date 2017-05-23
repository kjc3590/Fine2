
function openNav() {
	if ($(window).width() > 991){
			 document.getElementById("mainban").style.marginLeft = "280px";
	} else {
		 document.getElementById("menusuit1").style.background = "white";
		 document.getElementById("mainban").style.marginLeft = "280px";
		 document.getElementById("mainban").style.paddingTop = "0";
		 
	
	}
	
	document.body.style.position = "fixed";
	document.getElementById("menusuit1").style.opacity = "0";
	
    document.getElementById("mySidenav").style.width = "280px";
    document.getElementById("mySidenav").style.background = "transparent";
    $('.sidenav .closebtn').css('opacity','1');
    document.body.style.background = "rgba(13, 19, 22, 1)";
    $('.content-wrap').css('pointer-events','none');

    document.getElementById("mainban").style.opacity = "0.25";
}

function closeNav() {

	if ($(window).width() > 991){
	
		 document.getElementById("mainban").style.marginLeft = "60px";

	}else{
		document.getElementById("mainban").style.paddingTop = "44px";
		 document.getElementById("mainban").style.marginLeft = "0";
	 $('.content-wrap').css('opacity','1');
 }
	document.body.style.position = "relative";
	document.getElementById("menusuit1").style.opacity = "1";
	 $('.sidenav .closebtn').css('opacity','0');
	document.body.style.background = "transparent";
  
    document.getElementById("mySidenav").style.width = "0";
    $('.content-wrap').css('pointer-events','all');

    document.getElementById("mainban").style.opacity = "1.0";

}



function changeNav() {
    document.getElementById("menusuit1").style.backgroundColor = "rgba(133,133,133,0.9)";
    document.getElementById("menubutton1").style.color = "black";
    
}






