data
dataAt: aKey
	"Returns value at named data store for the element, as set by data(name, value)."
	
	self call: 'data' with: aKey