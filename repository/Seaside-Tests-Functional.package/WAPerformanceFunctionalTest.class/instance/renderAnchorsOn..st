rendering
renderAnchorsOn: canvas
	self renderDurationFor: [:html | 
		html heading: 'Anchor Test'.
		html unorderedList: [
			1 to: 500 do: [ :each | 
				html listItem: [
					html anchor
						name: each seasideString;
						callback: [];
						with: each ] ] ] ] on: canvas