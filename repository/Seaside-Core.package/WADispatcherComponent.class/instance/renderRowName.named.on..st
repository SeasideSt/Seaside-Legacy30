rendering-rows
renderRowName: anEntryPoint named: aString on: html
	anEntryPoint isDispatcher
		ifTrue: [ html anchor callback: [ self dispatcher: anEntryPoint ]; with: aString ]
		ifFalse: [
			anEntryPoint isApplication
				ifTrue: [ html anchor url: anEntryPoint basePath; with: aString ]
				ifFalse: [ html render: aString ] ]