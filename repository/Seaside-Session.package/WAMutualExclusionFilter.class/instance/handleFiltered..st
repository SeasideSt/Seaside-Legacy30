processing
handleFiltered: aRequestContext
	(self shouldTerminate: aRequestContext)
		ifTrue: [ self terminate: aRequestContext ]
		ifFalse: [ self critical: [ super handleFiltered: aRequestContext ] ]