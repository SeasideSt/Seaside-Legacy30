testing
isPrimitiveType: anObject
	^ anObject isNumber or: [ anObject isNil or: [ anObject == true or: [ anObject == false ] ] ]