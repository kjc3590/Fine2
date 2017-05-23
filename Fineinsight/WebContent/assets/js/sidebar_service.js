
function openNav() {
	if ($(window).width() > 1199){
	}

	document.body.style.position = "fixed";
	document.getElementById("menusuit1").style.opacity = "0";
	document.getElementById("nodap").style.marginLeft = "280px";

	document.getElementById("mySidenav").style.width = "280px";http://localhost:8080/huhu313/portfolio.jsp

	document.getElementById("mySidenav").style.background = "transparent";
	  $('.sidenav .closebtn').css('opacity','1');
	document.body.style.background = "rgba(13, 19, 22, 1)";



	document.getElementById("nodap").style.opacity = "0.25";



}


function closeNav() {

	if ($(window).width() > 1199){


		document.getElementById("menusuit1").style.background = "rgba(34, 33, 31, 0.67)";

	}

	
	document.body.style.position = "inherit";
	document.getElementById("menusuit1").style.opacity = "1";

	  $('.sidenav .closebtn').css('opacity','0');
	document.getElementById("nodap").style.marginLeft = "0";
	document.getElementById("mySidenav").style.width = "0";

	document.getElementById("nodap").style.opacity = "1.0";

}



function changeNav() {
	document.getElementById("menusuit1").style.backgroundColor = "rgba(133,133,133,0.9)";
	document.getElementById("menubutton1").style.color = "black";

}






