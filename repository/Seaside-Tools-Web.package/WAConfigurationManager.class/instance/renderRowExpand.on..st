rendering-rows
renderRowExpand: anEntryPoint  on: html

	anEntryPoint isDispatcher
		ifTrue: [
			html anchor
				callback: [	self selection: anEntryPoint.
								self dispatcher: anEntryPoint.
								self emptyPage ];
				with:  '+'.]
		ifFalse: []