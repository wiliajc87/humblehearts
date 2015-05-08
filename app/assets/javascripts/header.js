$(document).ready(function(){
	var $window = $(window)
	var $nav = $("nav")
	$window.scroll(function() { 
		var scroll = $window.scrollTop();
		if (scroll >= 500) {
			$nav.addClass("scrolling");
		} else {
			$nav.removeClass("scrolling");
		}
	});
});