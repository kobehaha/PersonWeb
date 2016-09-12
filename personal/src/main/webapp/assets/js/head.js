$(function(){
	$(".mynav").find("li").each(function(index){
		$(this).click(function(){
			$(this).addClass("active");
		}).siblings("li").removeClass("active");
	})
})