rendering-rows
renderRowName: anEntryPoint named: aString on: html
	anEntryPoint isDispatcher
		ifTrue: [
			html anchor
				callback: [ self dispatcher: anEntryPoint ];
				with: [ html code: aString , '/' ] ]
		ifFalse: [
			html anchor 
				url: anEntryPoint basePath , '/'; 
				with: [ html code: aString ] ]