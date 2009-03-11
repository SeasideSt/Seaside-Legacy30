rendering
renderNativeBreakOn: canvas
	self renderDurationFor: [:html :idx | | id1 |
			html html: '<br/>' ]
		factor: 1/50
		key: #nativeBR
		on: canvas
		
	