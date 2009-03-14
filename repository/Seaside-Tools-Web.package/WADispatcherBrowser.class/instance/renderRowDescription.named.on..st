rendering-rows
renderRowDescription: anEntryPoint named: aString on: html
	aString = self upDirectory
		ifFalse: [ html render: anEntryPoint class description ]
		ifTrue: [ html render: 'Parent Directory' ]