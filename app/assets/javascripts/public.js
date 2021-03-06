//= require jquery
//= require jquery_ujs
//= require gko/public/jquery.grid.responsive.js
//= require twitter.bootstrap.2.2.1/bootstrap/transition.js
//= require twitter.bootstrap.2.2.1/bootstrap/alert.js
//= require twitter.bootstrap.2.2.1/bootstrap/button.js
//= require twitter.bootstrap.2.2.1/bootstrap/carousel.js
//= require twitter.bootstrap.2.2.1/bootstrap/collapse.js
//= require twitter.bootstrap.2.2.1/bootstrap/dropdown.js
//= require twitter.bootstrap.2.2.1/bootstrap/modal.js
//= require flexslider/jquery.flexslider.js  
//= require gko/twitter-bootstrap-hover-dropdown.js
var $window,$body,contentApi, isOverBreakPoint;

var Site = {
	
	init: function() {
		$body = $("body"),
		$window = $(window);
		Carousel.init();
		Site.setEvents();
	},
	
	setEvents: function() {
		$('select#member_id').change(function(){
		    var result = $(this).val()
			document.location.href = result;
		});
	}
}

var Carousel = {

	init: function() {

		if ($('#carousel li').length > 1) {
			// The slider being synced must be initialized first
			$('#carousel').flexslider({
				animation: "slide",
				controlNav: false,
				animationLoop: false,
				slideshow: false,
				itemWidth: 156,
				itemMargin: 5,
				asNavFor: '#slider'
			});

			$('#slider').flexslider({
				animation: "slide",
				controlNav: false,
				animationLoop: false,
				slideshow: false,
				sync: "#carousel"
			});
		} else {
			$('#carousel').hide();
		}

	}
}

$(document).ready(function() {
	Site.init();
});