
function openNav() {
	if ($(window).width() > 1199){
		$('.menusuit').css('background','transparent');
		document.getElementById("menusuit1").style.opacity = "0";
	}else {
		$('.menusuit').css('background','white');
	}
	document.getElementById("content-wrap").style.marginLeft = "280px";
	document.getElementById("mySidenav").style.width = "280px";
	document.getElementById("mySidenav").style.background = "black";
	document.body.style.background = "rgba(13, 19, 22, 1)";
	document.getElementById("pv").style.opacity = "0.25";
	document.getElementById("menusuit1").style.opacity = "0";
}
/* Set the width of the side navigation to 0 and the left margin of the page content to 0, and the background color of body to white */
function closeNav() {
	if ($(window).width() > 1199){
		document.getElementById("pv").style.marginLeft = "4rem";
	}else {
		document.getElementById("menusuit1").style.background = "white";
	}
	document.getElementById("menusuit1").style.opacity = "1";
	document.getElementById("content-wrap").style.marginLeft = "0";
	document.body.style.background ="#d0d0d0";
	document.getElementById("mySidenav").style.width = "0";
	document.getElementById("pv").style.opacity = "1.0";
}

function changeNav() {
	document.getElementById("menusuit1").style.backgroundColor = "rgba(133,133,133,0.9)";
	document.getElementById("menubutton1").style.color = "black";
}
