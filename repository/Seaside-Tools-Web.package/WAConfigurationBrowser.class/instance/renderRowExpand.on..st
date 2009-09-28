rendering-rows
renderRowExpand: anEntryPoint  on: html

	anEntryPoint isDispatcher
		ifTrue: [
			html anchor
				callback: [ self expand: anEntryPoint ];
				with:  '+'.]
		ifFalse: []