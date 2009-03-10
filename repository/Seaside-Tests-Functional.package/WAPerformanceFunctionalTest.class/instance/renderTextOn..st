rendering
renderTextOn: canvas
	self renderDurationFor: [:html | 
			html heading: 'Text Rendering Test'.
			1 to: 1000 do: [ :each | 
				html text: 'abcdefghijklmnopqrstuvwxyz<>öüä?ß@#!"§$%&/()="'.
				]  ] on: canvas