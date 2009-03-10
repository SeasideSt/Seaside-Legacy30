rendering
renderAnchorsOn: canvas
	self renderDurationFor: [:html :idx | 
		html unorderedList: [
			html listItem: [
					html anchor
						name: idx seasideString;
						callback: [];
						with: idx ] ] ]
		title: 'Anchor Test'
		on: canvas
