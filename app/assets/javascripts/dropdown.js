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

$('.drop_cat').each(function(){
  $(this).css("height",$(this).height()+"px");
});
$('.drop_cat').hide();
$('.open_btn').click(function () {
  $(this).next('.drop_cat').slideToggle('slow').siblings('.drop_cat').slideUp('slow');
  $(this).siblings('.open_btn').removeClass('active')
  $(this).toggleClass('active');
});
