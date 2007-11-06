actions
toggleUIProcess
	Project uiProcess isSuspended
		ifTrue: [Project uiProcess resume]
		ifFalse: [Project uiProcess suspend]