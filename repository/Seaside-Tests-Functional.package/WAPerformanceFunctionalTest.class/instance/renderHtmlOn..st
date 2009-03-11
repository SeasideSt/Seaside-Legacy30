rendering
renderHtmlOn: canvas
	self renderDurationFor: [:html :idx | | id1 |
			html html: '<br/>' ]
		factor: 1/50
		title: 'Native (br) Rendering Test'
		on: canvas
		
	