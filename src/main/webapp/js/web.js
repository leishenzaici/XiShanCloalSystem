$(function(){ 
	$('.list .show dd').show('slow');
	
    $('.list dl dt').click(function(){
		if($(this).hasClass('la')){
			$(this).parent('dl').children('dd').slideUp();
			$(this).css({background:'url(images/icon.png) no-repeat 0 -56px' }); 
			$(this).removeClass("la");              
		} else {
			$(this).parent('dl').children('dd').slideDown();
			$(this).css({background:'url(images/icon.png) no-repeat 0 -86px'}); 
			$(this).addClass("la");              
		}
	}); 
});
