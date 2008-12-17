rendering
renderContentOn: html
	self renderBoxOn: html.
	html paragraph class: 'actions'; with: [
		#( blind clip drop explode fold puff pulsate scale slide ) do: [ :each | 
			html anchor
				onClick: ((html jQuery: '.box') effect
					toggle;
					perform: each);
				with: each ] ]