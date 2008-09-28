rendering-rows
renderRowName: anEntryPoint named: aString on: html
	anEntryPoint isDispatcher
		ifTrue: [ 
			html anchor
				callback: [ self dispatcher: anEntryPoint ];
				with: aString ]
		ifFalse: [
			html anchor 
				url: anEntryPoint basePath , '/'; 
				with: aString ]