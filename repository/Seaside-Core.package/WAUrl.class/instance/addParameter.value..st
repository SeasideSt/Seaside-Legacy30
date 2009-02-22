adding
addParameter: aKey value: aValue
	"Add the parameter aKey with aValue to the receiving url."
	
	aKey isEmpty 
		ifFalse: [ self parameters at: aKey append: aValue ]