rendering
renderTextOn: canvas
	self renderDurationFor: [:html :idx | | id1 |
			html text: 'abcdefghijklmnopqrstuvwxyz0123456789' ]
		title: 'Seaside Text Rendering Test'
		on: canvas
		
