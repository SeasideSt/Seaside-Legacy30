rendering
renderToolsOn: html
	html paragraph: [
		html anchor
			callback: [ self answer: true ];
			title: 'Open a debugger in your IDE and block until you hit "Proceed"';
			with: 'Debug'.
		self exception isResumable ifTrue: [
			html space.
			html anchor
				callback: [ self answer: false ];
				with: 'Proceed' ].
		limit < frames size ifTrue: [
			html space.
			html anchor
				callback: [ limit := frames size ];
				with: 'Full Stack' ] ]