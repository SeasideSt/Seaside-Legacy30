modifying
wrap: aString attributes: aDictionary
	"Wraps an element inside another, then returns the wrapper."

	self call: 'wrap' arguments: (Array with: aString with: aDictionary)