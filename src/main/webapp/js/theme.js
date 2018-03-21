$(document).ready(function(){
    "use strict"; // Start of use strict

    // jQuery for page scrolling feature - requires jQuery Easing plugin
    $('a.page-scroll').on('click', function(event) {
        var $anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: ($($anchor.attr('href')).offset().top - 70)
        }, 1250, 'easeInOutExpo');
        event.preventDefault();
    });

    // Highlight the top nav as scrolling occurs
    $('body').scrollspy({
        target: '.navbar-fixed-top',
        offset: 71
    });

	// Closes the Responsive Menu on Menu Item Click
	$('.navbar-collapse ul li a').on('click', function(event) {
		$(this).closest('.collapse').collapse('toggle');
	});

    // Offset for Main Navigation
    $('#mainNav').affix({
        offset: {
            top: 100
        }
    })


    // Initialize and Configure Scroll Reveal Animation
	
    window.sr = ScrollReveal();
    sr.reveal('.sr-icons', {
        duration: 600,
        scale: 0.3,
        distance: '0px'
    }, 200);
    sr.reveal('.sr-button', {
        duration: 1000,
        delay: 200
    });
    sr.reveal('.sr-contact', {
        duration: 600,
        scale: 0.3,
        distance: '0px'
    }, 300);
	    
//Script to Activate the Carousel

	//Script to Activate the Carousel

	$('.carousel').carousel({
		interval: 10000, //changes the speed
		pause:null  //If set to "hover", pauses the cycling of the carousel on mouseenter and resumes the cycling of the carousel on mouseleave. If set to null, hovering over the carousel won't pause it.
	})
	
// prettyPhoto

	$("a[rel^='alternate']").prettyPhoto();
	
	
// Datepicker

	$(".date").datepicker();
	
   
}); // End of use strict
