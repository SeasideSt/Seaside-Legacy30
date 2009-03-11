rendering
renderHtmlTextOn: canvas
	self renderDurationFor: [:html :idx | | id1 |
			html html: 'abcdefghijklmnopqrstuvwxyz0123456789' ]
		factor: 1/50
		key: #nativeText
		on: canvas
		
