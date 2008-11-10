data
removeDataAt: aKey
	"Stores the value in the named spot and also returns the value."
	
	self call: 'removeData' with: aKey