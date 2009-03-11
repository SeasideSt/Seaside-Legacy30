rendering
renderBreakOn: canvas
	self renderDurationFor: [:html :idx | | id1 |
			html break]
		factor: 1/50
		key: #seasideBR
		on: canvas
		
	