/* -----------------------------------------------
/* How to use? : Check the GitHub README
/* ----------------------------------------------- */

/* To load a config file (particles.json) you need to host this demo (MAMP/WAMP/local)... */
/*
particlesJS.load('particles-js', 'particles.json', function() {
  console.log('particles.js loaded - callback');
});
*/

/* Otherwise just put the config content (json): */

particlesJS('particles-js',
  
		{
	  "particles": {
	    "number": {
	      "value": 337,
	      "density": {
	        "enable": true,
	        "value_area": 800
	      }
	    },
	    "color": {
	      "value": "#fff"
	    },
	    "shape": {
	      "type": "circle",
	      "stroke": {
	        "width": 0,
	        "color": "#000000"
	      },
	      "polygon": {
	        "nb_sides": 5
	      },
	      "image": {
	        "src": "img/github.svg",
	        "width": 100,
	        "height": 100
	      }
	    },
	    "opacity": {
	      "value": 0.70550130678083,
	      "random": true,
	      "anim": {
	        "enable": true,
	        "speed": 0.08120772123013452,
	        "opacity_min": 0.008120772123013452,
	        "sync": false
	      }
	    },
	    "size": {
	      "value": 4,
	      "random": false,
	      "anim": {
	        "enable": false,
	        "speed": 121.81158184520177,
	        "size_min": 0,
	        "sync": false
	      }
	    },
	    "line_linked": {
	      "enable": false,
	      "distance": 500,
	      "color": "#ffffff",
	      "opacity": 0.4,
	      "width": 2
	    },
	    "move": {
	      "enable": true,
	      "speed": 36.30079151508454,
	      "direction": "bottom",
	      "random": true,
	      "straight": true,
	      "out_mode": "out",
	      "bounce": false,
	      "attract": {
	        "enable": false,
	        "rotateX": 0,
	        "rotateY": 0
	      }
	    }
	  },
	  "interactivity": {
	    "detect_on": "canvas",
	    "events": {
	      "onhover": {
	        "enable": true,
	        "mode": "bubble"
	      },
	      "onclick": {
	        "enable": true,
	        "mode": "repulse"
	      },
	      "resize": true
	    },
	    "modes": {
	      "grab": {
	        "distance": 400,
	        "line_linked": {
	          "opacity": 0.5
	        }
	      },
	      "bubble": {
	        "distance": 400,
	        "size": 4,
	        "duration": 0.3,
	        "opacity": 1,
	        "speed": 3
	      },
	      "repulse": {
	        "distance": 200,
	        "duration": 0.4
	      },
	      "push": {
	        "particles_nb": 4
	      },
	      "remove": {
	        "particles_nb": 2
	      }
	    }
	  },
	  "retina_detect": true,
    "config_demo": {
      "hide_card": false,
      "background_color": "#b61924",
      "background_image": "",
      "background_position": "50% 50%",
      "background_repeat": "no-repeat",
      "background_size": "cover"
    }
  }

);