(function ($) {
	$.fn.linkPreview = function(){
	
	
	$("h1").hover(function(){
	
		$(this).append($("<span>***</span>"));
		
	});
		
	
	}
	
})(jQuery);