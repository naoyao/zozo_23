$(function(){
	$("li.narrowList").on({
		'mouseenter' : function() {
			$("ul.pulldownChild", this).stop().slideDown();
		},
		'mouseleave' : function() {
			$("ul.pulldownChild", this).stop().slideUp();
		}
	});
});
