data
dataAt: aKey put: aValue
	"Stores the value in the named spot and also returns the value."
	
	self call: 'data' with: aKey with: aValue