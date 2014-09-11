read = ->
	$(".select2").select2
	  width: "150px"
	
$(document).ready read
$(document).on "page:load", read
