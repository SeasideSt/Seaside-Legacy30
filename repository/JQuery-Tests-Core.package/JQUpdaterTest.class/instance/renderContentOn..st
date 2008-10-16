as yet unclassified
renderContentOn: html
	html code id: #log.
	
	" clears the log whenever a link is clicked "
	self session addLoadScript: ((html jQuery: 'a')
		onMouseDown: ((html jQuery: #log)
			empty)).

	" in case of an ajax event update the log "
	#(onAjaxComplete: onAjaxError: onAjaxSend: onAjaxStart: onAjaxStop: onAjaxSuccess:) do: [ :each |
		self session addLoadScript: ((html jQuery: #log) 
			perform: each with: ((html jQuery: #log)
				append: each allButLast , ' ')) ]