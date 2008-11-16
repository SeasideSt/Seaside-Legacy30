options
to: aDictionaryOrString
	"Transfer - The element to transfer to."
"WASmallDictionary new 
			at: 'foo' put: 1; 
			at: 'bar' put: 2; 
			at: 'zork' put: 3;
			yourself)"
	self optionAt: 'to' put: aDictionaryOrString