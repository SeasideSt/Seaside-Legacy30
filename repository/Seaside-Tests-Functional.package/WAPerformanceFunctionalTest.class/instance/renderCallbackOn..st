rendering
renderCallbackOn: canvas
	self renderDurationFor: [:html :idx | 
			html button callback: []; with: '' ]
		title: 'Callback Test'
		on: canvas