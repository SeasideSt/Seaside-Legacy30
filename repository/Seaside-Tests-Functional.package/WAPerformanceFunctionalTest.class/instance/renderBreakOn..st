rendering
renderBreakOn: canvas
	self renderDurationFor: [:html :idx | | id1 |
			html break]
		factor: 1/100
		title: 'Seaside (br) Rendering Test'
		on: canvas
		
	