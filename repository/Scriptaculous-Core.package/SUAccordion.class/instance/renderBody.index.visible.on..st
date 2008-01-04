rendering
renderBody: aComponent index: anInteger visible: aBoolean on: html
	(self isVisible: aComponent)
		ifFalse: [ ^ self ].
	html definitionData
		id: (self uid: 'body' at: anInteger);
		style: (aBoolean ifFalse: [ 'display: none' ]);
		with: aComponent