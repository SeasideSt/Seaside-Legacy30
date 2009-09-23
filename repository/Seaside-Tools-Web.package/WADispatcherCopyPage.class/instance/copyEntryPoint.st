actions
copyEntryPoint 
	| newEntryPoint |
	newEntryPoint := self dispatcher parent
							register: self dispatcher cloneHandler
							at: name.
	^self answer: newEntryPoint
		