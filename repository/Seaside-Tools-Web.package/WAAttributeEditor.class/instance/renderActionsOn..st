rendering
renderActionsOn: html
	html span class: 'action';
		with: [
		self hasAdvancedAttributes
			ifTrue: [
				html anchor
					title: 'Show / Hide advanced attributes';
					callback: [self displayAdvancedAttributes: self displayAdvancedAttributes not.
								self displayAdvancedAttributes ifTrue: [self collapsed: false]];
					with: [self displayAdvancedAttributes
									ifTrue: [html code: '-']
									ifFalse: [html code: '+']]].
			html space.
			html anchor
				title: 'Collapse / Expand';
				callback: [self collapsed: self collapsed not.
						self collapsed ifTrue: [self showHelp: false ] ];
				with: [self collapsed
							ifTrue: [html html: '&darr;']
							ifFalse: [html html: '&uarr;'] ].
			html space.
			html anchor
				title: 'Show / Hide Help';
				callback: [self showHelp: self showHelp not.
							self showHelp ifTrue: [self collapsed: false] ];
				with: '?']