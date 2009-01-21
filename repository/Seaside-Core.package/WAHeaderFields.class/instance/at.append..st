accessing
at: aKey append: aValue
	"Set the value of aKey to be aValue, do not override existing values with the same key."
	
	^ self privateAt: aKey put: aValue