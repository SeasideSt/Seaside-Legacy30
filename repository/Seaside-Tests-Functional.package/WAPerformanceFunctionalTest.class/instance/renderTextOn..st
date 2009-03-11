rendering
renderTextOn: canvas
	self renderDurationFor: [:html :idx | | id1 |
			html text: 'abcdefghijklmnopqrstuvwxyz0123456789' ]
		factor: 1/50
		title: 'Seaside Text Rendering Test'
		on: canvas
		
