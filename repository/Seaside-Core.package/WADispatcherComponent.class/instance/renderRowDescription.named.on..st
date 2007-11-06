rendering-rows
renderRowDescription: anEntryPoint named: aString on: html
	aString = self upDirectory
		ifFalse: [ html render: anEntryPoint description ]
		ifTrue: [ html render: 'Parent Directory' ]