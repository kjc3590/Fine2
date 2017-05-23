




function openNav() {
	if ($(window).width() > 991){
		$('.menusuit').css('background','transparent');
	
		document.getElementById("menusuit1").style.opacity = "0";
	}else {
		
	}
	$('.menusuit').css('background','transparent');
	$('.sidenav .closebtn').css('opacity','1');
	
	document.body.style.position = "fixed";
	document.getElementById("content-wrap").style.marginLeft = "280px";
	
	document.getElementById("mySidenav").style.width = "280px";

	document.getElementById("mySidenav").style.background = "black";
	document.body.style.background = "rgba(13, 19, 22, 1)";



	$('.content-wrap').css('pointer-events','none');




	document.getElementById("content-wrap").style.opacity = "0.25";


}

/* Set the width of the side navigation to 0 and the left margin of the page content to 0, and the background color of body to white */
function closeNav() {

	if ($(window).width() > 991){

		document.getElementById("content-wrap").style.marginLeft = "60px";
		document.body.style.background ="#transparent";

	}else{
		document.getElementById("content-wrap").style.marginLeft = "0";
		document.getElementById("menusuit1").style.background ="white";
	}
	
	document.body.style.position = "inherit";
	$('.sidenav .closebtn').css('opacity','0');
	
	document.getElementById("menusuit1").style.opacity = "1";
	document.getElementById("mySidenav").style.width = "0";
	$('.content-wrap').css('pointer-events','all');

	/*  document.getElementById("particles-js").style.background = "linear-gradient(to right, rgb(33, 53, 74), rgba(25, 64, 78, 0.9))";*/
	/*   document.getElementById("particles-js").style.display = "none";*/
	document.getElementById("content-wrap").style.opacity = "1.0";

}



function changeNav() {
	document.getElementById("menusuit1").style.backgroundColor = "rgba(133,133,133,0.9)";
	document.getElementById("menubutton1").style.color = "black";

}






