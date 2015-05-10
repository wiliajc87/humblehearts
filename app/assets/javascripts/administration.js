$(document).ready(function(){
    $("#tabs li").click(function(){
        var $this = $(this);
        if (!$this.hasClass("active")) {
            var tabNum = $this.index();
            var nthChild = tabNum+1;
            $("#tabs li.active").removeClass("active");
            $this.addClass("active");
            $("#tab li.active").removeClass("active");
            $("#tab li:nth-child("+nthChild+")").addClass("active");
        }
    });
});