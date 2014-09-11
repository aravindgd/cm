read = ->
	$(".select2").select2
	  width: "150px"
	$(".image-slider").owlCarousel();
	
$(document).ready read
$(document).on "page:load", read
