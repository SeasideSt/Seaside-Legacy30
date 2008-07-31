values
takeValue: anObject forAttribute: anAttribute
	^ anObject ifNotNil: [values at: anAttribute key put: anObject]