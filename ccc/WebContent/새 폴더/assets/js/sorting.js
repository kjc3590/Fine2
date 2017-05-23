/* SORTING */ 
jQuery(window).load(function(){
	



	
	
	
	var bool = true;
	
	


	if($('opc-main-bg selected').html() == 'All') {
		
		 $('.navbar-nav>li>.dropdown-menu').css('margin-left','-8px');
		
	}
	   
    $('.load_more_cont a').click(function(){
          if( $(this).html() == '더보기'){
           

             
             bool = false;
          }
          else if($(this).html() == '접기') {
             
             bool = true;
          }
       });	
	
	
	
	

jQuery.fn.portfolio_addon = function(addon_options) {
   //Set Variables
   var addon_el = jQuery(this),
      addon_base = this,
      //아이템에서 가져올 총 길이 
      img_count = addon_options.items.length,
    //몇개씩 가지고올껀지 
      img_per_load = addon_options.load_count,
      $newEls = '',
      loaded_object = '',
      $container = jQuery('.iso-box-wrapper');
  
   

   
   
   jQuery('.btn_load_more').click(function(){
	   
	  


       if(bool==false){
			
    	  
	   
     
	   
	   
      $newEls = '';
      loaded_object = '';                              
      loaded_images = $container.find('.added').size();
    
      if ((img_count - loaded_images) > img_per_load) {
         now_load = img_per_load;      } else {
         now_load = img_count - loaded_images;
      }
      
      if ((loaded_images + now_load) == img_count) jQuery(this).fadeOut();

      if (loaded_images < 1) {
         i_start = 1;
      } else {
         i_start = loaded_images+1;
      }

      if (now_load > 0) {
         if (addon_options.type == 0) {
            /*//1 Column Service Type
            for (i = i_start-1; i < i_start+now_load-1; i++) {
               loaded_object = loaded_object + '<div data-category="'+ addon_options.items[i].category +'" class="'+ addon_options.items[i].category +' element row-fluid added"><div class="filter_img span6"><div class="wrapped_img"><a href="'+ addon_options.items[i].post_zoom +'" class="prettyPhoto" rel="prettyPhoto[portfolio1]"><img src="'+ addon_options.items[i].src +'" alt="" width="570" height="340"></a></div></div><div class="portfolio_dscr span6"><div class="bg_title"><h4><a href="'+ addon_options.items[i].url +'">'+ addon_options.items[i].title +'</a></h4></div>'+ addon_options.items[i].description +'</div></div>';
            }*/
         } else {
            //2-4 Columns Service Type
            for (i = i_start-1; i < i_start+now_load-1; i++) {
               loaded_object = loaded_object + '<div class="iso-box '+ addon_options.items[i].classname +' element col-md-4 col-sm-4"><div class="portfolio-thumb"><img src="'+addon_options.items[i].src+'" class="fluid-img" alt="portfolio"><div class="portfolio-overlay"><div class="portfolio-item"><h4>'+addon_options.items[i].content+'</h4><a href="'+addon_options.items[i].imgurl+'" id="tttt" data-lightbox-gallery="'+addon_options.items[i].data+'"><i class="fa fa-link"></i></a><a href="'+addon_options.items[i].url+'" target="_blank"><i class="fa fa-share" id="tt"></i></a></div></div><div class="thumb-item"><p class="p-item">'+addon_options.items[i].name+'</p><span>'+addon_options.items[i].text+'</span></div></div></div>';
               
           
            }
         }            
     
         $newEls = jQuery(loaded_object);
         
         $container.isotope('insert', $newEls, function() {
        	 
            
             
            var $container  = $('.iso-box-wrapper'), 
              $imgs     = $('.iso-box img');

     
            
         });
         $container.imagesLoaded(function () {

             $container.isotope({
             layoutMode: 'fitRows',
             itemSelector: '.element'
             });

            
               $container.isotope('layout');
          

           });
       
         
         $('#portfolio .portfolio-thumb .portfolio-overlay .portfolio-item #tttt').nivoLightbox({
             effect: 'fadeScale',
         });


      }
       
      $(this).html('접기');
      }else if(bool==true){
    	  
    	  $newEls.remove();
    	  $container.imagesLoaded(function () {

              $container.isotope({
              layoutMode: 'fitRows',
              itemSelector: '.element'
              });

              
                $container.isotope('layout');
             

            });
    	  
    	  
    	  
    
    	  $(this).html('더보기')
    	   
			   
	      
	}
        
      
       
         
   
      
   });
}


});