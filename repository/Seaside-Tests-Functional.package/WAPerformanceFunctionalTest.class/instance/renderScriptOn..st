rendering
renderScriptOn: canvas
	self renderDurationFor: [:html | 
			html heading: 'Script Test'.
			1 to: 500 do: [ :each | 
				html text: 'abcdefghijklmnopqrstuvwxyz' ]  ] on: canvas