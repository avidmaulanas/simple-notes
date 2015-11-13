ready = ->
	$('.infinite-notes').infinitePages
		debug: true
		buffer: 200 # load new page when within 200px of nav link
		# context: 'body' # define the scrolling container (defaults to window)
		loading: ->
			# jQuery callback on the nav element
			$(this).text("Loading...")
		success: ->
		# called after successful ajax call
		error: ->
			# called after failed ajax call
			$(this).text("Trouble! Please drink some coconut water and click again")

$(document).ready ready
$(document).bind "page:load page:change", ready
	