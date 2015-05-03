$(document).ready {
$(window).scroll(function() {    
    var scroll = $(window).scrollTop();
    console.log(scroll)
    if (scroll >= 500) {
        $("nav").addClass("scrolling");
    } else {
        $("nav").removeClass("scrolling");
    }
});
}