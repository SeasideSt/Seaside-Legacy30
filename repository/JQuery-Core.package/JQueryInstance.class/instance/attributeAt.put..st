attributes
attributeAt: aKey put: aValue
	"Set a single property to a value, on all matched elements."
	
	self call: 'attr' with: aKey with: aValue