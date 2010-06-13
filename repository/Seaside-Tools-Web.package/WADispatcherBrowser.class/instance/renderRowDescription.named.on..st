rendering-rows
renderRowDescription: aHandler named: aString on: html
	aString = self upDirectory
		ifFalse: [ html render: aHandler class description ]
		ifTrue: [ html render: 'Parent Directory' ]