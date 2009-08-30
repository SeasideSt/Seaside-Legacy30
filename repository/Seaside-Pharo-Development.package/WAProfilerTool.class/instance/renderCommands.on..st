rendering
renderCommands: anItem on: html
	html anchor
		callback: [ message := anItem tree ];
		with: 'Tree'.
	html text: ' '.
	html anchor
		callback: [ message := anItem leaves ];
		with: 'Leaves'.
	html text: ' '.
	html anchor
		callback: [ message := anItem stats ];
		with: 'Stats'
