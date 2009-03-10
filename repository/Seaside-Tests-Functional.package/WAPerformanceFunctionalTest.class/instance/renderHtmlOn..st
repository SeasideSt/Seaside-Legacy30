rendering
renderHtmlOn: canvas
	self renderDurationFor: [:html | 
			html heading: 'Pure Rendering Test'.
			1 to: 5000 do: [ :each | 
				html html: '<p>abcdefghijklmnopqrstuvwxyz0123456789</p>'.
				]  ] on: canvas