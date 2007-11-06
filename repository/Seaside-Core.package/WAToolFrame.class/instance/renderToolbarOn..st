rendering
renderToolbarOn: html
	html div id: 'toolbar'; with: [
		self plugins
			do: [ :each | html render: each ]
			separatedBy: [ html text: ' ' ] ].
	processTime := nil