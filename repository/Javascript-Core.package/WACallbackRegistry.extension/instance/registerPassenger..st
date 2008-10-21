*javascript-core
registerPassenger: anObject
	^ self storeCallback: (JSPassenger new setObject: anObject)