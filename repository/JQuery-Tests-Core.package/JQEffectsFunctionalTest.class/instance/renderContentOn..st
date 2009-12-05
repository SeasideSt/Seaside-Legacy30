rendering
renderContentOn: html
	html paragraph class: 'actions'; with: [
		#(show: hide: toggle: slideDown: slideUp: slideToggle: fadeIn: fadeOut:) do: [ :selector |
			html anchor
				onClick: ((html jQuery: #seastar) 
					perform: selector
					with: 1 seconds);
				with: selector allButLast ] ].
	self renderSeastarOn: html