private
titleForOption: anObject
	^ titleBlock isNil
		ifTrue: [ anObject ]
		ifFalse: [ titleBlock value: anObject ]