rendering
renderToolbarOn: html
	html div id: 'toolbar'; with: [
		(self plugins select: [ :each | each isActive ])
			do: [ :each | html render: each ]
			separatedBy: [ html text: ' ' ] ]