convenience
confirm: anObject
	"Show a confirmation with the message anObject before evaluating the receiver."

	self condition: (SUStream new nextPutAll: 'confirm'; argument: anObject)