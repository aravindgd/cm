read = ->
	$(".select2").select2()
	
$(document).ready read
$(document).on "page:load", read
