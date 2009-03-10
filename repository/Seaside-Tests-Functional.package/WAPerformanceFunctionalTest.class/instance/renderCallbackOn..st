rendering
renderCallbackOn: canvas
	self renderDurationFor: [:html | 
		html heading: 'Callback Test'.
			1 to: 1000 do: [ :each | 
				html button callback: []; with: '' ] ] on: canvas