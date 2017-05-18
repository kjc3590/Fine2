jQuery(window).on('load', function(){
	//preloader
	$("#status").fadeOut(); // will first fade out the loading animation
	$("#preloader").delay(800).fadeOut("slow"); // will fade out the white DIV that covers the website.
	$('.menusuit').css('width','0px');
	$('.menusuit .menubutton').css('color','black');
	



});

$(document).ready(function () {
	$('.fdi-Carousel').slick({
		centerMode: true,
		centerPadding: '60px',
		slidesToShow: 3,
		responsive: [
			{
				breakpoint: 768,
				settings: {
					arrows: false,
					centerMode: true,
					centerPadding: '40px',
					slidesToShow: 3
				}
			},
			{
				breakpoint: 480,
				settings: {
					arrows: false,
					centerMode: true,
					centerPadding: '40px',
					slidesToShow: 1
				}
			}
			]
	});
	
	
	
	$('#myCarousel').carousel({
		interval: 10000
	})




/*
	$('.fdi-Carousel .item').each(function () {
		var next = $(this).next();
		if (!next.length) {
			next = $(this).siblings(':first');
		}
		next.children(':first-child').clone().appendTo($(this));

		if (next.next().length > 0) {
			next.next().children(':first-child').clone().appendTo($(this));
		}
		else {
			$(this).siblings(':first').children(':first-child').clone().appendTo($(this));
		}
	});*/

	
});

