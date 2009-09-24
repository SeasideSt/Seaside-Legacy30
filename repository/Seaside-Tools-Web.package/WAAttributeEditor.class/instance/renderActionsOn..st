rendering
renderActionsOn: html
	html span class: 'action';
		with: [
		self hasAdvancedAttributes
			ifTrue: [
				html anchor
					title: 'Show /Hide advanced attributes';
					callback: [];
					with: [html html: '+']].
			html space.
			html anchor
				title: 'Collapse / Expand';
				callback: [self collapsed: self collapsed not];
				with: [self collapsed
							ifTrue: [html html: '&darr;']
							ifFalse: [html html: '&uarr;'] ] ]