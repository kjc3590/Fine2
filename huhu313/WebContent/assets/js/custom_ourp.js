jQuery(window).on('load', function(){
	  //preloader
    $("#status").fadeOut(); // will first fade out the loading animation
	   $("#preloader").delay(800).fadeOut("slow"); // will fade out the white DIV that covers the website.

		if ($(window).width() > 1199){
			
		document.getElementById("pv").style.marginLeft = "5rem";

		
	 }else {
		 $('.menusuit').css('background','white');
	 }
		
		/*
		var ment = "파인인사이트는 창조적 시각, 경험을 바탕으로 한 안목 자신감있는 관점으로 크리에이티브한 디자인과 솔루션을 제공하고 있습니다.";
		var ment1 = "다양한 사용자 환경에 맞는 컨설팅을 제안하는 파인인사이트의 포트폴리오입니다.";
		var mentFirst = "고객을 만족시키는 서비스";
		var mentFirst1 = "";
		var mentSecond = "사용자 중심의 프로세스 구축";
		var mentSecond1 = "";
		var mentThird = "효과적인 미디어 메세지 전달";
		var mentThird1 = "";
		var mentFourth = "메디컬 시스템 전문가";
		var mentFourth1 = "";
		

		

		$('.an').click(function() {
			$('.content-right .content-detail').html(ment);
			$('.content-right .content-detail2').html(ment1);
			
		});
		
		$('.a0').click(function() {
			$('.content-right .content-detail').html(mentFirst);
			$('.content-right .content-detail2').html(mentFirst1);
			
			
		});
		
		$('.a1').click(function() {
			$('.content-right .content-detail').html(mentSecond);
			$('.content-right .content-detail2').html(mentSecond1);
			
		});
		
		$('.a2').click(function() {
			$('.content-right .content-detail').html(mentThird);
			$('.content-right .content-detail2').html(mentThird1);
			
		});
		
		$('.a3').click(function() {
			$('.content-right .content-detail').html(mentFourth);
			$('.content-right .content-detail2').html(mentFourth1);
			
		});
	
		$('.p1').addClass("selected");*/
	   
});

$(document).ready(function(){  
	
	
	
	
	
	//pop up porfolio
	$('.portfolio-image .igrid a').magnificPopup({
		type: 'image',
		gallery: {
			enabled: true
		}
	// other options
	});
/*	



    // Service Item Tab Slider
    $('.service-item-tab').on('click', function() {
        $('.service-item-tab').removeClass('active');
        $(this).addCass('active');
    });
    
    //scrollReveal js Init
    window.sr = ScrollReveal({ duration: 800 });
    sr.reveal('.foo');
   */
	
	
	
	
	
	
	
    
	/*
	추가사항
	
	nivo-lightbox.min.js
	imagesloaded.min.js
	isotope.js
	sorting.js
	
	/*
	$('#portfolio .portfolio-thumb .portfolio-overlay .portfolio-item #tttt').nivoLightbox({
	    effect: 'fadeScale',
	});*/
	
	
	if ( $('.iso-box-wrapper').length > 0 ) { 

		var $container  = $('.iso-box-wrapper'), 
		$imgs     = $('.iso-box img');

		$container.imagesLoaded(function () {

			$container.isotope({
				layoutMode: 'fitRows',
				itemSelector: '.iso-box'
			});

			$imgs.load(function(){
				$container.isotope('reLayout');
			})

		});

		//filter items on button click

		$('.filter-wrapper li a').click(function(){

			var $this = $(this), filterValue = $this.attr('data-filter');

			$container.isotope({ 
				filter: filterValue,
				animationOptions: { 
					duration: 750, 
					easing: 'linear', 
					queue: false, 
				}                
			});             

			// don't proceed if already selected 

			if ( $this.hasClass('selected') ) { 
				return false; 
			}

			var filter_wrapper = $this.closest('.filter-wrapper');
			filter_wrapper.find('.selected').removeClass('selected');
			$this.addClass('selected');

			return false;
		}); 

	}
	
});