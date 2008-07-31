values
takeValue: anObject forAttribute: anAttribute
	^ anObject ifNotNil: [values at: anAttribute key put: ((WAOverrideValue key: anAttribute key) configuration: self; value: anObject; yourself)]