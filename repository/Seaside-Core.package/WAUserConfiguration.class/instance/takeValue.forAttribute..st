values
takeValue: anObject forAttribute: anAttribute
	^ anObject ifNotNil: [ self storeValue: ((WAOverrideValue key: anAttribute key) configuration: self; value: anObject; yourself) forAttribute: anAttribute ]