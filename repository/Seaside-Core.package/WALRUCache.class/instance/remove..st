removing
remove: anObject
	ageTable removeKey: anObject.
	table removeKey: (table keyAtValue: anObject)