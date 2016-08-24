
window.requestAnimationFrame = (function(){
  return  window.requestAnimationFrame       ||
          window.webkitRequestAnimationFrame ||
          window.mozRequestAnimationFrame    ||
          function( callback ){
            window.setTimeout(callback, 1000 / 60);
          };
})();

var speed = 5000;
(function currencySlide(){
    var currencyPairWidth = $('.slideItem:first-child').outerWidth();
    $(".slideContainer").animate({marginLeft:-currencyPairWidth},speed, 'linear', function(){
                $(this).css({marginLeft:0}).find("li:last").after($(this).find("li:first"));
        });
        requestAnimationFrame(currencySlide);
})();



$("#requestQuote").click(function()
		{
			  alert('hi');
			  var requestorName = $("#requestorName").val();
			  var requestorEmail =$("#requestorEmail").val();
			  var requestorPhone =$("#requestorPhone").val();
			  var eventLocation =$("#eventLocation").val();
			
		});