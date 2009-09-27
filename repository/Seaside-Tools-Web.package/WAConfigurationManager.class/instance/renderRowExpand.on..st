rendering-rows
renderRowExpand: anEntryPoint  on: html

	anEntryPoint isDispatcher
		ifTrue: [
			html anchor
				callback: [ self dispatcher: anEntryPoint ];
				with:  '+'.]
		ifFalse: []