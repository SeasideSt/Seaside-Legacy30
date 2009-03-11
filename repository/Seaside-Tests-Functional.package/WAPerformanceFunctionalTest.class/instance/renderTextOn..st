rendering
renderTextOn: canvas
	self renderDurationFor: [:html :idx | | id1 |
			html text: 'abcdefghijklmnopqrstuvwxyz0123456789' ]
		factor: 1/50
		key: #seasideText
		on: canvas
		
