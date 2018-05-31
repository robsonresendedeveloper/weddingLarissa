$(document).ready(function(){
	$("#button-mobile").on("click", function(){
      $("header").addClass("open-menu");
    });

    $("#menu-mobile-mask").on("click", function(){
      $("header").removeClass("open-menu");
    });
});
