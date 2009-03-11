rendering
renderBreakOn: canvas
	self renderDurationFor: [:html :idx | | id1 |
			html break]
		factor: 1/50
		title: 'Seaside (br) Rendering Test'
		on: canvas
		
	