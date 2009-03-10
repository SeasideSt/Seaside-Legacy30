rendering
renderIdTestOn: canvas
	self renderDurationFor: [:html | 
			html heading: 'ID''s Test'.
			1 to: 1000 do: [ :each | 
				html span id: html nextId; with: each ]  ] on: canvas