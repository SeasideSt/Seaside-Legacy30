rendering
renderLineBreaksOn: canvas
	self renderDurationFor: [:html :idx | | id1 |
			html withLineBreaks: 'a
			b
			c' ]
		factor: 1
		key: #lineBreak
		on: canvas
		
	