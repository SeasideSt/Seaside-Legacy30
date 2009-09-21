rendering-rows
renderRowName: anEntryPoint named: aString on: html

	anEntryPoint isDispatcher
		ifTrue: [	
			html anchor
				callback: [ self dispatcher: anEntryPoint ];
				with: [ html code: '/'  , aString] ]
		ifFalse: [
			html anchor 
				callback: [self configure: anEntryPoint ];
				with: [ html code: aString ] ]