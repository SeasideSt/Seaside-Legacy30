rendering
renderHtmlTextOn: canvas
	self renderInline: [:html |
			html html: 'abcdefghijklmnopqrstuvwxyz0123456789' ]
		factor: 1/50
		key: #nativeText
		on: canvas
		
